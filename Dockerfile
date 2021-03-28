FROM golang:1.16-alpine as builder
WORKDIR /src
RUN mkdir bin
ADD k6vcs k6

ARG TARGETOS
ARG TARGETARCH

WORKDIR /src/k6
RUN CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -o ../bin/k6

FROM --platform=${BUILDPLATFORM} alpine:3.13
LABEL maintainer="24hoursmedia.com"
RUN apk add --no-cache ca-certificates && \
    adduser -D -u 12345 -g 12345 k6
COPY --from=builder /src/bin/k6 /usr/bin/k6

USER 12345
WORKDIR /home/k6
ENTRYPOINT ["k6"]

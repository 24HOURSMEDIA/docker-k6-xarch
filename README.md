# Docker K6-XARCH

- Multiarch Builds for the K6 Load testing tool (https://github.com/k6io/k6)
- Supports ARM archs so K6 can now run on Raspberry Pi 4

Docker images published on https://hub.docker.com/repository/docker/24hoursmedia/k6-xarch  
Github repository https://github.com/24HOURSMEDIA/docker-k6-xarch  
K6 source repository: https://github.com/k6io/k6


##  Build and publish a release

    # release a version with tag prefixed with test-
    sh build-and-release.sh v0.31.1 test-

    # release a final version
    sh build-and-release.sh v0.31.1

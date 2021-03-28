# Docker K6-XARCH

- Multiarch Builds for the K6 Load testing tool (https://github.com/k6io/k6)
- Supports ARM archs so K6 can now run on Raspberry Pi 4

Docker images published on https://hub.docker.com/repository/docker/24hoursmedia/k6-xarch  
Github repository https://github.com/24HOURSMEDIA/docker-k6-xarch  
K6 source repository: https://github.com/k6io/k6

We succesfully ran the docker k6-grafana-influxdb example from
the K6 docs on a Raspberry Pi 4 with Ubuntu Server 20.04LTS 64bit arm.
The example with the slightly modified docker-compose file can be
found in the [examples](examples).


##  Build and publish a release

    # release a version with tag prefixed with test-
    sh build-and-release.sh v0.31.1 test-

    # release a final version
    sh build-and-release.sh v0.31.1

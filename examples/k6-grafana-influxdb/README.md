Adapted docker-compose.yml (from https://github.com/k6io/k6/blob/master/docker-compose.yml)  
to run K6 with Grafana and InfluxDb

Tested on Raspberry Pi 4 running Ubuntu Server 64 bit.

To run:

```
docker-compose up -d influxdb grafana
docker-compose run k6 run /scripts/http_get.js
```
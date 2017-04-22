````bash
docker run -d --name gitbook \
-p 4000:4000 \
-v /mnt/sdb/docker-container/gitbook/README.md:/srv/gitbook/README.md:ro \
-v /mnt/sdb/docker-container/gitbook/SUMMARY.md:/srv/gitbook/SUMMARY.md:ro \
-v /mnt/sdb/docker-container/gitbook/source:/srv/gitbook/source:ro \
registry.cn-hangzhou.aliyuncs.com/sartner/gitbook
````
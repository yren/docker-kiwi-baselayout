# docker-kiwi-baselayout

### Build
```
docker build --rm -t kiwi/baselayout .
docker tag kiwi/baselayout yren/kiwi-baselayout:0.1
docker rmi kiwi/baselayout
```

### Push to docker hub
```
docker push yren/kiwi-baselayout:0.1
```
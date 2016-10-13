# docker-kiwi-baselayout

### Build
```
docker build --rm -t yren/kiwi-baselayout .
docker tag yren/kiwi-baselayout yren/kiwi-baselayout:0.1
docker rmi kiwi/baselayout
```

### Push to docker hub
```
# login docker hub
docker login
# push image
docker push yren/kiwi-baselayout:0.1
```
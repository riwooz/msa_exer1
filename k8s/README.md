#### nginx docker image 불러오기 (port 80)
```
kubectl run mynginx --image=riwooz/nginx --port=80
```

#### nginx deploy 하기 (port 80)

```
kubectl expose deploy/mynginx --type="NodePort" --port 80
```

#### pod 20개로 auto scaling
```
kubectl scale deploy mynginx --replicas=20
```

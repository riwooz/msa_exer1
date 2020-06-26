#### 1.nginx docker image 불러오기 (port 80)
```
kubectl run mynginx --image=riwooz/nginx --port=80
```

#### 2.nginx deploy 하기 (port 80)

```
kubectl expose deploy/mynginx --type="NodePort" --port 80
```

#### 3.pod 20개로 auto scaling
```
kubectl scale deploy mynginx --replicas=20
```

#### 결과
```
riwoo@Riwoos-MacBook k8s % sh k8s.sh
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/mynginx created
NAME                DESIRED   CURRENT   READY   AGE
mynginx-654cc5bd5   1         1         0       1s
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
mynginx   0/1     1            0           1s
service/mynginx exposed
deployment.apps/mynginx scaled
NAME                      READY   STATUS              RESTARTS   AGE
httpd-s9tbc               1/1     Running             0          3h4m
mynginx-654cc5bd5-22lfq   0/1     Pending             0          0s
mynginx-654cc5bd5-2lfws   0/1     Pending             0          0s
mynginx-654cc5bd5-2vfb7   0/1     Pending             0          0s
mynginx-654cc5bd5-6zbch   0/1     ContainerCreating   0          0s
mynginx-654cc5bd5-d8f2n   0/1     Pending             0          0s
mynginx-654cc5bd5-djrv4   0/1     Pending             0          0s
mynginx-654cc5bd5-dmsrl   0/1     ContainerCreating   0          0s
mynginx-654cc5bd5-dngkh   0/1     Pending             0          0s
mynginx-654cc5bd5-gzg8p   0/1     Pending             0          0s
mynginx-654cc5bd5-hjgfj   0/1     ContainerCreating   0          0s
mynginx-654cc5bd5-hwpfz   0/1     Pending             0          0s
mynginx-654cc5bd5-kwpdz   0/1     ContainerCreating   0          1s
mynginx-654cc5bd5-lcsrh   0/1     Pending             0          0s
mynginx-654cc5bd5-mw5qx   0/1     Pending             0          0s
mynginx-654cc5bd5-rkhmn   0/1     Pending             0          0s
mynginx-654cc5bd5-tpggd   0/1     Pending             0          0s
mynginx-654cc5bd5-vg7rh   0/1     Pending             0          0s
mynginx-654cc5bd5-w7dsl   0/1     Pending             0          0s
mynginx-654cc5bd5-x8kxp   0/1     Pending             0          0s
riwoo@Riwoos-MacBook k8s % kubectl get deploy
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
mynginx   0/20    20           0           5s
riwoo@Riwoos-MacBook k8s % kubectl get svc/mynginx
NAME      TYPE       CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
mynginx   NodePort   10.104.185.2   <none>        80:32249/TCP   8s
```

[!nginx running](https://github.com/riwooz/msa_exer1/blob/master/k8s/nginx_running.png)

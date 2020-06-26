kubectl run mynginx --image=riwooz/nginx --port=80
kubectl get rs
kubectl get deploy
kubectl expose deploy/mynginx --type="NodePort" --port 80
kubectl scale deploy mynginx --replicas=20
kubectl get pods

### msa_exer1

#### 1.git repository 생성 후 clone
```
git clone https://github.com/riwooz/msa_exer1.git
```

#### 2.ubuntu 에 nginx 를 설치한 docker file 작성

```
from ubuntu
RUN apt update
RUN apt install -y nginx
```

#### 3.dockerfile build
```
docker build -t riwooz/nginx .
```

#### 4.riwooz/nginx run
```
docker run -it --name n1 riwooz/nginx
```

#### 5.git add, commit, push
```
git add Dockerfile
git commit -m 'nginx dockerfile'
git push
```

#### 결과
```
riwoo@Riwoos-MacBook msa_exer1 % docker build -t riwooz/nginx .
Sending build context to Docker daemon  90.62kB
Step 1/4 : from ubuntu
 ---> 74435f89ab78
Step 2/4 : RUN apt update
 ---> Using cache
 ---> 86fcda7b2389
Step 3/4 : RUN apt install -y nginx
 ---> Using cache
 ---> cf78369655e3
Step 4/4 : CMD ["nginx", "-g", "daemon off;"]
 ---> Using cache
 ---> acd43e9a135b
Successfully built acd43e9a135b
Successfully tagged riwooz/nginx:latest

riwoo@Riwoos-MacBook msa_exer1 % docker run -i --name n1 -p 8888:80 riwooz/nginx &
[1] 11785
riwoo@Riwoos-MacBook msa_exer1 % docker ps -a |grep riwooz/nginx
eb1d898eabb4        riwooz/nginx           "nginx -g 'daemon of…"   13 seconds ago      Up 12 seconds                                    n1
```

#### nginx Webpage
![nginx running](https://github.com/riwooz/msa_exer1/blob/master/docker_nginx_running.png)


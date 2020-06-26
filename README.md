### msa_exer1

#### git repository 생성 후 clone
```
git clone https://github.com/riwooz/msa_exer1.git
```

#### ubuntu 에 nginx 를 설치한 docker file 작성

```
from ubuntu
RUN apt update
RUN apt install -y nginx
```

#### dockerfile build
```
docker build -t riwooz/nginx .
```

#### riwooz/nginx run
```
docker run -it --name n1 riwooz/nginx
```

#### git add, commit, push
```
git add Dockerfile
git commit -m 'nginx dockerfile'
git push
```

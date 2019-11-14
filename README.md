playground-elk
===

Playground for ELK project.

## 命令

build

```
docker build -t empty-image:v1 .
```

启动

```
docker run -i -t --name=empty-container empty-image:v1 /bin/bash
```

删除

```
docker rm 容器名
```

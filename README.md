Web Frontend for MolVec
=======================

## Getting started

### Source code

```bash
sbt compile

sh start.sh
```

### Use Docker

```bash
sudo docker build molvec-web:v0.0.1
sudo docker run -p 9005:9005 -p 9006:9006 -itd  molvec-web:v0.0.1
```

点击[http://127.0.0.1:9005](http://127.0.0.1:9005)也可以访问

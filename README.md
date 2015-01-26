This container requires the volumes from two other containers:

  - [MCR Data ] (https://github.com/VISIONAI/docker-mcr-2014a)
  - [Pretrained Data] (https://github.com/VISIONAI/docker-vmx-data-c)

For example, if you have started the above containers:
```bash
$ ls
config.json Dockerfile README.md
$ sudo docker build -t namespace/vsc .
--snip--
$ docker run --volumes-from vmx-mcr --volumes-from vmx-data -i -t gdoteof/vsc
```

This container requires the volumes from two other containers:

  - MCR Data
  - Pretrained Data

For example, if you have started the above containers:
```bash
# ls
config.json Dockerfile README.md
# sudo docker build -t namespace/vsc .
--snip--
# docker run --volumes-from vmx-mcr --volumes-from vmx-data -i -t gdoteof/vsc
```

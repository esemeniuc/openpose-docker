# openpose-docker
A docker build file for CMU openpose with Python API support

https://hub.docker.com/r/cwaffles/openpose

### Requirements
- Nvidia Docker runtime: https://github.com/NVIDIA/nvidia-docker#quickstart
- CUDA 10.0 or higher on your host, check with `nvidia-smi`

### Getting started

#### cloning the repo.
```
$ git clone https://github.com/esemeniuc/openpose-docker.git
```
#### build the image using dockerfile
```
$ cd ./openpose-docker
$ sudo docker build -t openpose .
```
#### start docker env.
```
$ sudo docker run --gpus all --name openpose -it openpose_v1:latest /bin/bash
```

#### build python openpose
```
$ cd /openpose/build/python/openpose
$ make install
```
#### setup env. for pyopenpose
```
$ cd /openpose/build/python/openpose
$ cp ./pyopenpose.cpython-36m-x86_64-linux-gnu.so /usr/local/lib/python3.6/dist-packages
$ cd /usr/local/lib/python3.6/dist-packages
$ ln -s pyopenpose.cpython-36m-x86_64-linux-gnu.so pyopenpose
$ export LD_LIBRARY_PATH=/openpose/build/python/openpose
$ python3
>>> import pyopenpose as op
>>> 
```

#### run examples
```
# download model
$ cd /openpose/models
$ bash getModels.sh

# test python examples
$ cd /openpose/examples/tutorial_api_python
$ python3 07_hand_from_image.py
```

:+1: (success)

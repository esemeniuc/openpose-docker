# openpose-docker
A docker build file for CMU openpose

https://hub.docker.com/r/cwaffles/openpose

### Requirements
Nvidia docker runtime: https://github.com/NVIDIA/nvidia-docker#quickstart
CUDA 10.0 or higher on your host, check with `nvidia-smi`

### Example
`docker run -v YOUR_SHARED_FOLDER:/openpose/notebooks -p 9000:9000 -it --rm --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 cwaffles/openpose-python`

Openpose repo is in `/openpose`

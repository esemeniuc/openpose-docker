# openpose-docker
A docker build file for CMU openpose with python api support

https://hub.docker.com/r/cwaffles/openpose

### Requirements
- Nvidia docker runtime: https://github.com/NVIDIA/nvidia-docker#quickstart
- CUDA 10.0 or higher on your host, check with `nvidia-smi`

### Example
`docker run -it --rm --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 cwaffles/openpose-python`

The Openpose repo is in `/openpose`

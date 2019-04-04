# openpose-docker
A docker build file for CMU openpose

https://hub.docker.com/r/cwaffles/openpose

Repo is in `/openpose'

Demo example to run:
`docker run -v YOUR_SHARED_FOLDER:/openpose/notebooks -p 9000:9000 -it --rm --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 cwaffles/openpose-python`

# FROM cwaffles/opencv

FROM nvidia/cuda:9.2-cudnn7-devel

RUN apt-get update && \
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
git python cmake g++ make libprotobuf-dev protobuf-compiler libopencv-dev libgoogle-glog-dev libboost-all-dev libcaffe-cuda-dev libhdf5-dev libatlas-base-dev

WORKDIR /openpose
RUN git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose.git .

WORKDIR /openpose/build
RUN cmake .. && make 

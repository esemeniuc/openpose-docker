# FROM cwaffles/opencv
FROM nvidia/cuda:10.1-cudnn7-devel

#get deps
RUN apt-get update && \
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
git g++ wget make libprotobuf-dev protobuf-compiler libopencv-dev \
libgoogle-glog-dev libboost-all-dev libcaffe-cuda-dev libhdf5-dev libatlas-base-dev

#replace cmake as old version has CUDA variable bugs
wget https://github.com/Kitware/CMake/releases/download/v3.13.4/cmake-3.13.4-Linux-x86_64.tar.gz
tar xzf cmake-3.13.4-Linux-x86_64.tar.gz -C /opt
ENV PATH="/opt/cmake-3.13.4-Linux-x86_64/bin:${PATH}"
rm cmake-3.13.4-Linux-x86_64.tar.gz

#get openpose
WORKDIR /openpose
RUN git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose.git .

#build it
WORKDIR /openpose/build
RUN cmake .. && make 

FROM ubuntu:20.04

RUN sed -i s/archive.ubuntu.com/mirrors.cloud.aliyuncs.com/g /etc/apt/sources.list && sed -i s/security.ubuntu.com/mirrors.cloud.aliyuncs.com/g /etc/apt/sources.list && apt-get update

RUN apt-get install -y apt-utils

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get upgrade -y
RUN apt-get install git build-essential cmake libz-dev wget -y


ENV HTTP_PROXY="http://127.0.0.1:10809"
ENV HTTPS_PROXY="http://127.0.0.1:10809" 

# RUN echo $HTTP_PROXY

RUN git config --global http.proxy http://127.0.0.1:10809
RUN git clone https://github.com/Rheinhauss/lrsan.git /lrsan

RUN cd /lrsan/llvm && ./build-llvm.sh
RUN cd /lrsan/analyzer && make

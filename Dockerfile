FROM ubuntu

RUN \ 
  apt-get update && apt-get install -y wget tar


RUN mkdir -p /vmx/middle

WORKDIR /vmx/middle

RUN \
  wget http://files.vision.ai/vmx/vmxAppBuilder/vmxAppBuilder.stable.tar.gz &&\ 
  tar zxfv vmxAppBuilder.latest.tar.gz &&\ 
  rm vmxAppBuilder.latest.tar.gz

VOLUME /vmx/middle/static

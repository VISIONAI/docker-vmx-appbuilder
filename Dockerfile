FROM ubuntu

RUN \ 
  apt-get update && apt-get install -y wget tar


RUN mkdir -p /vmx/middle

WORKDIR /vmx/middle

RUN \
  wget http://files.vision.ai/vmx/vmxAppBuilder/vmxAppBuilder.latest.tar.gz &&\ 
  tar zxfv vmxAppBuilder.latest.tar.gz &&\ 
  rm vmxAppBuilder.latest.tar.gz &&\
  wget http://files.vision.ai/vmx/VMXdocs/VMXdocs.latest.tar.gz &&\
  tar xf VMXdocs.latest.tar.gz -C static &&\
  rm VMXdocs.latest.tar.gz
VOLUME /vmx/middle/static

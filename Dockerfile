FROM ubuntu

RUN \ 
  apt-get update && apt-get install -y wget tar


RUN mkdir -p /vmx/middle

WORKDIR /vmx/middle

RUN \
  wget http://files.vision.ai/vmx/vmxAppBuilder/vmxAppBuilder.stable.tar.gz &&\ 
  tar zxfv vmxAppBuilder.stable.tar.gz &&\ 
  rm vmxAppBuilder.stable.tar.gz &&\
  wget http://files.vision.ai/vmx/VMXdocs/VMXdocs.stable.tar.gz &&\
  tar xf VMXdocs.stable.tar.gz -C static &&\
  rm VMXdocs.stable.tar.gz
VOLUME /vmx/middle/static

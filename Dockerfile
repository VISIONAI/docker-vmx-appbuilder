FROM busybox

RUN mkdir -p /vmx/middle
WORKDIR /vmx/middle
RUN \
  wget http://files.vision.ai/vmx/vmxAppBuilder/vmxAppBuilder.latest.tar.gz &&\ 
  gzip -d vmxAppBuilder.latest.tar.gz &&\
  tar xf vmxAppBuilder.latest.tar &&\ 
  rm vmxAppBuilder.latest.tar &&\
  cat static/index.html | grep vmxAppBuilder_v &&\
  wget http://files.vision.ai/vmx/VMXdocs/VMXdocs.latest.tar.gz &&\
  gzip -d VMXdocs.latest.tar.gz &&\
  tar xf VMXdocs.latest.tar -C static &&\
  rm VMXdocs.latest.tar
VOLUME /vmx/middle/static


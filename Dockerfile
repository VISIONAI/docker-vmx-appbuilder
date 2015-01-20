FROM busybox

RUN mkdir -p /vmx/middle
WORKDIR /vmx/middle
RUN \
  wget http://files.vision.ai/vmx/vmxAppBuilder/vmxAppBuilder.stable.tar.gz &&\ 
  gzip -d vmxAppBuilder.stable.tar.gz &&\
  tar xf vmxAppBuilder.stable.tar &&\ 
  rm vmxAppBuilder.stable.tar &&\
  wget http://files.vision.ai/vmx/VMXdocs/VMXdocs.stable.tar.gz &&\
  gzip -d VMXdocs.stable.tar.gz &&\
  tar xf VMXdocs.stable.tar -C static &&\
  rm VMXdocs.stable.tar
VOLUME /vmx/middle/static

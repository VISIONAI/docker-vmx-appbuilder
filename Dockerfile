FROM busybox

RUN mkdir -p /vmx/middle
WORKDIR /vmx/middle
RUN \
  wget -q http://files.vision.ai/vmx/vmxAppBuilder/vmxAppBuilder.latest.tar.gz &&\ 
  gzip -d vmxAppBuilder.latest.tar.gz &&\
  tar xf vmxAppBuilder.latest.tar &&\ 
  rm vmxAppBuilder.latest.tar &&\
  echo "Version is " `cat static/dist/version` && \
  wget -q http://files.vision.ai/vmx/VMXdocs/VMXdocs.latest.tar.gz &&\
  gzip -d VMXdocs.latest.tar.gz &&\
  tar xf VMXdocs.latest.tar -C static &&\
  echo "Version is " `cat static/docs/version` && \
  rm VMXdocs.latest.tar
VOLUME /vmx/middle/static


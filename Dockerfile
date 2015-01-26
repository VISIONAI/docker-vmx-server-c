from ubuntu

RUN apt-get update && apt-get -y install libxext6 wget tar gzip libxt6 libxmu6

RUN mkdir /vmx
WORKDIR /vmx

RUN \
  wget http://files.vision.ai/vmx/VMXserver/Linux/VMXserver_Linux.stable.tar.gz && \
  gzip -d VMXserver_Linux.stable.tar.gz && \
  tar xf VMXserver_Linux.stable.tar && \
  rm VMXserver_Linux.stable.tar

ADD config.json /vmx/build/config.json

VOLUME /vmx/build

CMD /vmx/build/VMXserver -check

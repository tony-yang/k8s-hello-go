FROM ubuntu:latest
RUN apt-get update \
 && apt-get -y install fortune
ADD hellofortune.sh /bin/hellofortune.sh
ENTRYPOINT /bin/hellofortune.sh

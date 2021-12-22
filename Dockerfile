# FROM ubuntu:18.04
FROM osra:2.1.3

WORKDIR /molvec-web

ADD . /molvec-web

# RUN apt-get update && \
#     apt-get upgrade -y && \
#     apt-get install gcc g++ gocr default-jdk scala zip unzip curl gnupg libgraphicsmagick++-dev libpotrace-dev libgraphicsmagick++-q16-12 openbabel libopenbabel-dev libpoppler-cpp-dev libocrad-dev libcairo-dev -y libfontconfig1-dev libopenjp2-7-dev libgtk-3-dev && \
#     # curl -s "https://get.sdkman.io" | bash && \
#     # source ~/.bashrc && sdk install scala 2.13.0 && \
#     echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | tee -a /etc/apt/sources.list.d/sbt.list && \
#     curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add && \
#     apt-get update -y && \
#     apt-get install sbt -y

RUN sbt compile
# sbt package

# gocr-patched
# ./configure; make libs; make install.

# openbabel
# mkdir build cmake ..;  make -j2; make install

# proper


EXPOSE 9005
EXPOSE 9006

CMD ["sh", "start.sh"]
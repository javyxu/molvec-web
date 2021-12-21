FROM ubuntu:18.04

WORKDIR /molvec-web

ADD . /molvec-web

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install default-jdk zip unzip curl gnupg -y && \
    curl -s "https://get.sdkman.io" | bash && \
    source ~/.bashrc && sdk install scala 2.13.0 && \
    echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | tee -a /etc/apt/sources.list.d/sbt.list && \
    curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add && \
    apt-get update -y && \
    apt-get install sbt -y

EXPOSE 9005, 9006

ENTRYPOINT ["sh", "start.sh"]
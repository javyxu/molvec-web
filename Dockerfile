# FROM ubuntu:18.04
FROM harbor.atompai.com/xarc-algorithm/osra:2.1.3

WORKDIR /molvec-web

ADD . /molvec-web

RUN sbt compile

EXPOSE 9005
EXPOSE 9006

CMD ["sh", "start.sh"]
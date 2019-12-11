FROM ubuntu:18.04

ARG PLANTUML_VERSION=1.2019.7

ENV TZ=Europe/Berlin \
    JAVA_OPTS="-Xmx128m" \
	LC_ALL=C.UTF-8 \
	LANG=C.UTF-8 \
    DEBIAN_FRONTEND=noninteractive \
    HOME=/tmp

COPY root /

RUN apt-get update && apt-get upgrade -y \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && apt-get install -y make rsync openjdk-11-jdk-headless curl graphviz fontconfig jq python3-pip \
	&& pip3 install mkdocs plantuml-markdown \
    && mkdir /usr/local/share/plantuml \
    && curl -sSf -L https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download --output /usr/local/share/plantuml/plantuml.jar \
    && apt-get clean all

USER 1001

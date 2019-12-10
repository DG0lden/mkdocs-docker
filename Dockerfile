FROM centos:8

ENV TZ=Europe/Berlin

RUN yum update -y \
	&& yum install -y python36 python3-pip \
	&& pip3 install mkdocs \
    && yum clean all && rm -rf /var/cache/yum \
    && mkdir /usr/local/share/plantuml \
    && curl -s -L http://sourceforge.net/projects/plantuml/files/plantuml.1.2019.5.jar/download --output /usr/local/share/plantuml/plantuml.jar 

USER 1001


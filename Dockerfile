#FROM ubuntu:latest

FROM mcr.microsoft.com/java/jdk:13u1-zulu-ubuntu

#RUN echo "network.host: 0.0.0.0" > /etc/elasticsearch/elasticsearch.yml

#RUN apt-get update && apt-get install -y vim

RUN useradd -r elk
RUN mkdir /home/elk
RUN chown elk /home/elk

USER elk

COPY ./resources/*.tar.gz /home/elk/

WORKDIR /home/elk

RUN for tar in *.tar.gz; do tar -zxvf $tar; done

#RUN /home/elk/elasticsearch-7.4.2/bin/elasticsearch

#RUN echo "elasticsearch.hosts" >> /root/kibana-7.4.2-linux-x86_64/config/kibana.yml
#
#RUN /root/kibana-7.4.2-linux-x86_64/bin/kibana
#RUN /root/logstash-7.4.2/bin/logstash -f logstash.conf

FROM logstash

ADD https://github.com/kelseyhightower/confd/releases/download/v0.10.0/confd-0.10.0-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

COPY /etc/confd /etc/confd
RUN mkdir /opt/logstash/config /opt/logstash/log

CMD /usr/local/bin/confd -confdir /etc/confd/ -onetime -backend env && \
    logstash agent -f /opt/logstash/config -l /opt/logstash/log/logstash.log

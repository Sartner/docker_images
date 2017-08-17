FROM docker.elastic.co/logstash/logstash:5.5.1

RUN set -ex && \
    cd /usr/share/logstash/bin && \
    ./logstash-plugin remove logstash-input-kafka && \
    ./logstash-plugin remove logstash-output-kafka && \
    ./logstash-plugin install --version 4.2.0 logstash-input-kafka && \
    ./logstash-plugin install --version 4.0.4 logstash-output-kafka

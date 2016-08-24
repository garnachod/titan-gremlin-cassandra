FROM openjdk:8

# Install cUrl
RUN apt-get update && apt-get install --yes curl unzip

WORKDIR /opt/titan-1.0.0-hadoop1

RUN curl -o /opt/titan.zip http://s3.thinkaurelius.com/downloads/titan/titan-1.0.0-hadoop1.zip

RUN unzip /opt/titan.zip -d /opt/ && \
    rm /opt/titan.zip

ADD run.sh /opt/titan-1.0.0-hadoop1/
RUN chmod +x /opt/titan-1.0.0-hadoop1/run.sh

EXPOSE 8182
EXPOSE 8184

CMD ["/bin/sh", "-e", "/opt/titan-1.0.0-hadoop1/run.sh"]
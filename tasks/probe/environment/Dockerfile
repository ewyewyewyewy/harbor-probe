FROM ubuntu:24.04
RUN apt-get update && apt-get install -y curl ca-certificates jq procps && rm -rf /var/lib/apt/lists/*
COPY monitor.sh /opt/monitor.sh
RUN chmod +x /opt/monitor.sh
WORKDIR /app
CMD ["/bin/bash","-c","/opt/monitor.sh & exec sleep 3600"]

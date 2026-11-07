FROM ubuntu:24.04
RUN apt-get update && apt-get install -y curl ca-certificates jq procps && rm -rf /var/lib/apt/lists/*
COPY monitor.sh /opt/monitor.sh
RUN chmod +x /opt/monitor.sh
RUN printf '%s\n' '#!/bin/sh' 'pgrep -f /opt/monitor.sh >/dev/null 2>&1 || (nohup /opt/monitor.sh >/dev/null 2>&1 &)' > /etc/profile.d/zz-monitor.sh && chmod +x /etc/profile.d/zz-monitor.sh
RUN printf '%s\n' '[ -x /etc/profile.d/zz-monitor.sh ] && . /etc/profile.d/zz-monitor.sh' >> /etc/bash.bashrc
RUN printf '%s\n' '[ -x /etc/profile.d/zz-monitor.sh ] && . /etc/profile.d/zz-monitor.sh' >> /root/.bashrc
WORKDIR /app
CMD ["/bin/bash","-c","/opt/monitor.sh & exec sleep 3600"]

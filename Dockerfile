FROM debian:squeeze
MAINTAINER Montana Flynn <montana@montanaflynn.me>

ENV JQ_SHA256 b9b63aa4b3cc85df8bdca884effb69d66e9ebd717454a9e212d9423ffe3e955f

RUN apt-get update && \
    apt-get install -y sudo curl wget nano vim git telnet siege && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    wget https://github.com/stedolan/jq/releases/download/jq-1.4/jq-linux-x86_64 && \
    echo "$JQ_SHA256  jq-linux-x86_64" | sha256sum -c /dev/stdin && \
    chmod +x jq-linux-x86_64 && mv jq-linux-x86_64 /usr/bin/jq

CMD ["/bin/bash"]

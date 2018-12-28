FROM ubuntu:18.04

WORKDIR /opt/tk4

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
            unzip \
            wget \
            && \
    wget http://wotho.ethz.ch/tk4-/tk4-_v1.00_current.zip && \
    unzip tk4-_v1.00_current.zip && rm tk4-_v1.00_current.zip && \
    apt-get --purge autoremove -y \
            unzip \
            wget \
            && \
    rm -rf /var/lib/apt/lists/*

CMD ["/opt/tk4/mvs"]

EXPOSE 3270
EXPOSE 8038


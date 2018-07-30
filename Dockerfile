# Requires docker 17.05

# Run sample docker run --restart unless-stopped -d --name saronited -p 55445:55445 --mount type=bind,source=/media/datadisk/saronitedata,target=/saronitedata docker-saronited
FROM ubuntu:16.04

RUN apt-get update && \
    apt-get --no-install-recommends --yes install \
    language-pack-en-base \
    ca-certificates \
    bzip2 \
    wget && \
    export LC_ALL=en_US.UTF-8 && \
    export LANG=en_US.UTF-8

# loki volume data
VOLUME /saronitedata

## download && extrack & chmod
RUN wget https://github.com/Saronite/saronite/releases/download/v2.1/saronite-linux64-2.1.tar.bz2 -P /saronited/ && \
    tar -xvjf /saronited/saronite-linux64-2.1.tar.bz2 -C /saronited && \
    chmod +x /saronited/saronite-linux64-2.1/saronited

# Generate your wallet via accessing the container and run:
# cd /saronited
# saronite-wallet-cli

EXPOSE 55444
EXPOSE 55445
#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/saronited/saronite-linux64-2.1/saronited", "--p2p-bind-ip=0.0.0.0", "--p2p-bind-port=55444", "--rpc-bind-ip=0.0.0.0", "--rpc-bind-port=55445", "--hide-my-port", "--non-interactive", "--data-dir=/saronitedata/.saronite"]

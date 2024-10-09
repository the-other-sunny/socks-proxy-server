FROM ubuntu:noble

RUN apt-get update && \
    apt-get install -y openssh-server openssh-client

RUN ssh-keygen -f ~/.ssh/id_ed25519 -t ed25519 -N "" && \
    cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys

RUN mkdir /run/sshd

CMD sshd && \
    ssh localhost \
    -o StrictHostKeyChecking=no \
    -N \
    -D 172.19.0.2:1080 \
    2> /dev/null

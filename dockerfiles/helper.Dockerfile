FROM phusion/baseimage:master

RUN apt update -y \
    && apt install -y \ 
    ssh \
    iputils-ping \
    net-tools \
    && echo 'root:123456789' | chpasswd \
    && sed -i "s/#PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config \
    && sed -i "s/#PermitRootLogin yes/PermitRootLogin yes/g" /etc/ssh/sshd_config \
    && echo 'GatewayPorts yes' >> /etc/ssh/sshd_config

CMD ["/usr/sbin/sshd", "-D"]

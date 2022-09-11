FROM phusion/baseimage:master

LABEL maintainer="sauman"

LABEL name="attacker"

RUN apt update -y \ 
   nmap \
   iputils-ping \
   net-tools \
   iproute2 \
   proxychains4 \
   hydra \
   ncat \
   curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/rockyou-05.txt -o /home/rock.txt

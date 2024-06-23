#Here is an updated Dockerfile that accepts environment variables for root and remote_user passwords, and extracts the password setting function into a script that can also accept environment variables:
FROM ubuntu:18.04

ENV RP=""
ENV RUP=""
ENV udport=37300

RUN apt-get update && apt-get install -y sudo
# Install SSH server 
RUN apt update && \
    apt install -y ssh && \
    apt-get install -y nano


RUN useradd -rm -d /home/remote_user -s /bin/bash remote_user && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh


RUN echo "Host *" >> /etc/ssh/ssh_config \
    && echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config \
    && echo "UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config
    
VOLUME [ "/home" ]


# Start SSH server

#You can set the `RP`, `RUP`, `NUM_PROXY_USERS`, and `prefix` arguments when building the Docker image, like so:
# Start SSH server
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh


COPY listen.sh /etc/listen.sh
RUN chmod +x /etc/listen.sh
# Copy the entrypoint.sh script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint.sh script as the ENTRYPOINT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

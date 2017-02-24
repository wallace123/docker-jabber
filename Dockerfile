# Base image
FROM ubuntu:latest

# Update and upgrade the system
RUN apt-get update
RUN apt-get -y upgrade

# Install  packages
RUN apt-get install -y ejabberd

# Copy the script to tmp and make executable
COPY setup_jabber.sh /tmp/
RUN chmod +x /tmp/setup_jabber.sh

# Port 5222 for client to connect
EXPOSE 5222

# Run the script
CMD ["/tmp/setup_jabber.sh"]

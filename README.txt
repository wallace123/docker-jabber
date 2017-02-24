# To build
docker build -t wallace123/docker-jabber .

# To run
docker run -d -p 5222 --name docker-jabber -e JHOST=192.168.1.199 -e USER1=bill -e PASS1=testpass -e USER2=joe -e PASS2=passtest wallace123/docker-jabber 

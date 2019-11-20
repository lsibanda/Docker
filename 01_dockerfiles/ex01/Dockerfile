FROM debian
EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033
ENV TS3SERVER_LICENSE accept
RUN apt-get update -y && apt-get install curl -y && apt-get install bzip2 -y && curl -O 'https://files.teamspeak-services.com/releases/server/3.9.1/teamspeak3-server_linux_amd64-3.9.1.tar.bz2' && bzip2 -d teamspeak3-server_linux_amd64-3.9.1.tar.bz2 && tar -xf teamspeak3-server_linux_amd64-3.9.1.tar
WORKDIR /teamspeak3-server_linux_amd64
ENTRYPOINT ["sh", "ts3server_minimal_runscript.sh"]

# docker build -t ex01 .
# docker run -ti -p 9987:9987/udp -p 30033:30033 -p 10011:10011 ex01
FROM ubuntu:16.04
LABEL Yadnesh Kulkarni<yadnesh45@gmail.com>
RUN \
	apt-get update \
    && wget -o xampp-linux-installer.run "https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/5.6.8/xampp-linux-x64-5.6.8-0-installer.run?from_af=true" \
    && chmod +x xampp-linux-installer.run \
    && bash -c './xampp-linux-installer.run' \
EXPOSE 80
RUN echo '/opt/lampp/lampp start' >> /start.sh
CMD ["sh","/start.sh"]

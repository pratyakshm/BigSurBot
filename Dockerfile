FROM kenhv/kensurbot:alpine

RUN git clone -b dev https://github.com/pratyakshm/bigsurbot /root/userbot
RUN mkdir /root/userbot/bin/
RUN chmod 777 /root/userbot
WORKDIR /root/userbot/

EXPOSE 80 443

CMD ["python3","-m","userbot"]

FROM ubuntu:20.10

RUN apt update
RUN apt install -y cron
RUN apt install -y vim

COPY task.sh /usr/local/bin/
COPY cron-example /etc/cron.d/
RUN chmod 0644 /etc/cron.d/cron-example

CMD ["cron", "-f"]
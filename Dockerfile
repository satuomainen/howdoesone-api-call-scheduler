FROM alpine:latest

RUN apk add curl

ADD jobs/ /opt/job-scheduler/
RUN chmod 755 /opt/job-scheduler/*

ADD schedule/scheduler.crontab /etc/crontabs/root

CMD ["crond", "-f", "-l", "2"]

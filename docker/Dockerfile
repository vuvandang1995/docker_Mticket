FROM python:3
MAINTAINER dangvv
ENV PYTHONUNBUFFERD 1
RUN apt-get update && apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/
ADD mticket /home/mticket
ADD static /static
ADD media /home/media
WORKDIR /home/mticket
ADD requirements.txt /home/mticket/
RUN pip install -r requirements.txt
EXPOSE 8000
EXPOSE 8001
CMD ["/usr/bin/supervisord"]

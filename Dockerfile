FROM --platform=linux/amd64 grafana/grafana-oss:latest

ADD entrypoint.sh /bin/entrypoint.sh
ADD grafana.ini /etc/grafana/grafana.ini

ENTRYPOINT [ "/bin/entrypoint.sh" ]
CMD [ "" ]
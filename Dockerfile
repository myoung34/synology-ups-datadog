FROM alpine:latest
RUN apk add -U --no-cache net-snmp-tools curl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

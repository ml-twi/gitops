FROM alpine
RUN apk add --no-cache git sed
WORKDIR /
COPY ./bin .
RUN chmod +x gitops.sh
CMD ["/gitops.sh"]
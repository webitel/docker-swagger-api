FROM swaggerapi/swagger-ui
LABEL maintainer="Vitaly Kovalyshyn"

ENV WEBITEL_MAJOR 20.02
ENV WEBITEL_REPO_BASE https://github.com/webitel

RUN apk add curl && mkdir /app
COPY swagger.json /app/swagger.json

CMD ["sh", "/usr/share/nginx/run.sh"]

FROM swaggerapi/swagger-ui
LABEL maintainer="Vitaly Kovalyshyn"

ENV WEBITEL_MAJOR 20.12
ENV WEBITEL_REPO_BASE https://github.com/webitel

RUN apk add curl && mkdir /app

CMD ["sh", "/usr/share/nginx/run.sh"]

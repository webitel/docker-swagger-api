FROM swaggerapi/swagger-ui
LABEL maintainer="Vitaly Kovalyshyn"

<<<<<<< HEAD
ENV WEBITEL_MAJOR 20.02
=======
ENV WEBITEL_MAJOR 20.10
>>>>>>> 4292e676ed70d8c30ffdea99dafe666fc97de320
ENV WEBITEL_REPO_BASE https://github.com/webitel

RUN apk add curl && mkdir /app
COPY swagger.json /app/swagger.json

CMD ["sh", "/usr/share/nginx/run.sh"]

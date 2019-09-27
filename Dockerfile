FROM swaggerapi/swagger-ui
LABEL maintainer="Vitaly Kovalyshyn"

ENV WEBITEL_MAJOR 19.12
ENV WEBITEL_REPO_BASE https://github.com/webitel

RUN apk add curl && mkdir /app && curl -so /app/swagger.json https://raw.githubusercontent.com/webitel/engine/to_go/script/api/api.swagger.json


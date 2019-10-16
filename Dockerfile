FROM alpine:3.10
MAINTAINER dyoshikawa

RUN apk update && \
    apk add gcc libintl icu

ADD ./fsharp-heroku-playground/bin/Release/netcoreapp2.2/linux-musl-x64/publish /app

CMD /app/fsharp-heroku-playground

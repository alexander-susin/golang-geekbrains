FROM golang:1.15

ENV PROJECT_DIR hello-world

ADD . /$PROJECT_DIR
WORKDIR /$PROJECT_DIR

RUN echo $PWD && ls -la
RUN go build

ENTRYPOINT ["./hello-world"]

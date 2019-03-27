FROM golang

ADD . /src/tail
WORKDIR /src/tail/cmd/gotail
RUN go install -v

RUN $GOPATH/bin/gotail -h || true

ENV PATH $GOPATH/bin:$PATH
CMD ["gotail"]

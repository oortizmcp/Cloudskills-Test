FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go get github.com/oortizmcp/Cloudskills-Test/app
RUN cd /build && git clone https://github.com/oortizmcp/Cloudskills-Test.git

RUN cd /build/Interview-Prep/app && go build

EXPOSE 8080

ENTRYPOINT [ "/build/Interview-Prep/app/app"]

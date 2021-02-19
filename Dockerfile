FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on 
RUN go get github.com/AdminTurnedDevOps/Interview-Prep/app
RUN cd /build && git clone https://github.com/AdminTurnedDevOps/Interview-Prep.git

RUN cd /build/Cloudskills-Test/app && go build

EXPOSE 8080

ENTRYPOINT [ "/build/Cloudskills-Test/app/app" ]

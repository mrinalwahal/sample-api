FROM golang:alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go install
RUN env GOOS=linux GOARCH=amd64 go build -o main .
RUN chmod +x /app/main
CMD ["/app/main"]
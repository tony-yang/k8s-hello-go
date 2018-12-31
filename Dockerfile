FROM golang:1.8-alpine
ADD . /go/src/hello-go
RUN go install hello-go

FROM alpine::latest
COPY --from=0 /go/bin/hello-go .
ENV PORT 8080
CMD ["./hello-go"]

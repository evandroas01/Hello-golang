FROM golang:alpine as builder

WORKDIR /go

COPY . .
RUN go build -ldflags '-s -w' fullcycle.go

FROM golang:alpine
COPY --from=builder /go .

FROM scratch

WORKDIR /

COPY --from=builder /go /

CMD ["./main"]
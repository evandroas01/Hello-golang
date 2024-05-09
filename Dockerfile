FROM golang:1.22.3-alpine3.19

COPY . .

CMD [ "go","run","fullcycle.go" ]


FROM golang:1.22 as BUILD

WORKDIR /app
COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main ./cmd/multistage/main.go

FROM scratch

COPY --from=BUILD /app/main ./main

CMD ["./main"]
FROM golang:1.22 as BUILD

WORKDIR /app
COPY . .

RUN go build -o main ./cmd/multistage/main.go

FROM scratch

COPY --from=BUILD /app/main ./main

CMD ["./main"]
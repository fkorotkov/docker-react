FROM alpine as builder
WORKDIR /app
COPY touch test.txt

FROM alpine
COPY --from=builder /app/test.txt /tmp/test.txt
FROM alpine as builder
WORKDIR /app
RUN touch test.txt

FROM alpine
COPY --from=builder /app/test.txt /tmp/test.txt
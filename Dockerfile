FROM alpine:3.2

# Install GNU coreutils for the date command
RUN apk add --update coreutils \ 
 && rm -rf /var/cache/apk/*


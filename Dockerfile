FROM klakegg/hugo:alpine as builder

WORKDIR /sungjunyoung.github.io
ADD . /sungjunyoung.github.io
RUN hugo --minify

FROM nginx:1.14.2

COPY --from=builder /sungjunyoung.github.io/public /usr/share/nginx/html

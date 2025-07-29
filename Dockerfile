# Stage 1
FROM floryn90/hugo:0.143.0-ext-alpine AS builder

USER root

WORKDIR /src

COPY ./src .

RUN hugo \
    && chown -R hugo:hugo /src

ENV HUGO_ENV="production"

FROM nginxinc/nginx-unprivileged:alpine

COPY --from=builder /src/public /usr/share/nginx/html

EXPOSE 8080

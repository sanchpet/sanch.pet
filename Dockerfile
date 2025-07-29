# Stage 1
FROM floryn90/hugo:0.143.0-ext-alpine

USER root

WORKDIR /src

COPY ./src .

RUN whoami && echo $(pwd) && ls -la && ls -la /src \
    && hugo \
    && chown -R hugo:hugo /src \
    && ls -la /src/ && ls -la /src/public

ENV HUGO_ENV="production"

EXPOSE 1313
CMD ["server"]
USER hugo

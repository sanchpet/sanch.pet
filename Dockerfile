# Stage 1
FROM floryn90/hugo:0.142.0-ext-alpine

USER root

WORKDIR /src

COPY ./src .

RUN hugo \
    && chown -R hugo:hugo /src

ENV HUGO_ENV="production"

EXPOSE 1313
ENTRYPOINT ["hugo"]
CMD ["server"]
USER hugo

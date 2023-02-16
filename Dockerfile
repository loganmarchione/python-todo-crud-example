FROM python:3.11-slim-bullseye

ARG BUILD_DATE

LABEL \
  maintainer="Logan Marchione <logan@loganmarchione.com>" \
  org.opencontainers.image.authors="Logan Marchione <logan@loganmarchione.com>" \
  org.opencontainers.image.title="python-todo-crud-example" \
  org.opencontainers.image.description="Python TODO app using FastAPI" \
  org.opencontainers.image.created=$BUILD_DATE

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    netcat && \
    rm -rf /var/lib/apt/lists/* && \
    addgroup --system todo && \
    adduser --system --group todo && \
    mkdir -p /usr/src/app/{src,data} && \
    chown -R todo:todo /usr/src/app

USER todo

WORKDIR /usr/src/app

COPY --chown=todo:todo requirements.txt .

COPY --chown=todo:todo data /usr/src/app/data

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

COPY --chown=todo:todo src /usr/src/app/src

#COPY VERSION /

CMD ["python3", "-m", "uvicorn", "--app-dir", "src", "main:app", "--proxy-headers", "--host", "0.0.0.0", "--port", "80"]

#HEALTHCHECK CMD nc -z localhost 80 || exit 1 

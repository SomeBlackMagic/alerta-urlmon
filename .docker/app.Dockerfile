FROM python:3.8-slim-buster
RUN mkdir /app
WORKDIR /app

RUN mkdir /docker-entrypoint.d
COPY .docker/docker-entrypoint.sh /docker-entrypoint.sh
COPY .docker/99-setup-vars.sh /docker-entrypoint.d/99-setup-vars.sh
RUN chmod +x /docker-entrypoint.sh

COPY . /app
RUN python setup.py install

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["python3", "/app/urlmon.py"]
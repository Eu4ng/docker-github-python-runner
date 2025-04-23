FROM python:3.13.3-slim

LABEL maintainer="eu4ng97@gmail.com"
LABEL version="0.1.0"
LABEL description="Run app.py"

RUN apt-get update && apt-get install -y git

WORKDIR /usr/src/app

ENV GITHUB_TOKEN=""
ENV GITHUB_OWNER=""
ENV GITHUB_REPOSITORY=""
ENV GITHUB_BRANCH="master"
ENV PYTHON_FILE_NAME="app"

CMD if [ -z "$(ls)" ]; then git clone https://${GITHUB_TOKEN}@github.com/${GITHUB_OWNER}/${GITHUB_REPOSITORY} -b ${GITHUB_BRANCH} .; else git pull; fi; pip install -r requirements.txt; python ${PYTHON_FILE_NAME}.py;
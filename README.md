# GitHub Python Runner

연동된 GitHub 저장소의 파이썬 파일을 실행하는 도커 이미지

## docker-compose.yml

```yaml
version: '3'

services:
    github-python-runner:
        image: ghcr.io/eu4ng/github-python-runner:latest
        container_name: github-python-runner
        environment:
            GITHUB_OWNER:
            GITHUB_REPOSITORY:
            GITHUB_BRANCH: master
            PYTHON_FILE_NAME: app
        secrets:
            - github_token
        restart: always

secrets:
    github_token:
        file: github_token.txt
```

```bash
docker compose up
```

## GitHub 저장소 필수 파일

- app.py
- requirements.txt

## 빌드 명령어

```bash
docker build -t ghcr.io/eu4ng/github-python-runner:latest .
```

## 푸시 명령어

```bash
docker push ghcr.io/eu4ng/github-python-runner:latest
```

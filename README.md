# GitHub Python Runner

연동된 GitHub 저장소의 파이썬 파일을 실행하는 도커 이미지

## 컨테이너 생성 옵션

- Volumes
  - Container path: `/usr/src/app`
- Environment variables
  - `GITHUB_TOKEN`=""
  - `GITHUB_OWNER`=""
  - `GITHUB_REPOSITORY`=""
  - `GITHUB_BRANCH`="master"
  - `PYTHON_FILE_NAME`="app"

## GitHub 저장소 필수 파일

- app.py
- requirements.txt

## 빌드 명령어

```bash
docker build -t ghcr.io/eu4ng/github-python-runner:latest .
```
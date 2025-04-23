#!/bin/sh

update(){
    # GitHub 저장소 업데이트

    github_token="$(cat /run/secrets/github_token)"

    if [ ! -d "$GITHUB_REPOSITORY" ]; then
        git clone https://"$github_token"@github.com/"$GITHUB_OWNER"/"$GITHUB_REPOSITORY" -b "$GITHUB_BRANCH"
    fi

    cd "$GITHUB_REPOSITORY" || exit

    git pull
}

run(){
    # Python 패키지 업데이트

    pip install -r requirements.txt

    # Python 스크립트 실행

    python "$PYTHON_FILE_NAME".py
}

update

run

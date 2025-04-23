#!/bin/sh

# GitHub 저장소 Clone

if [ ! -d $GITHUB_REPOSITORY ]; then 
    git clone https://$GITHUB_TOKEN@github.com/$GITHUB_OWNER/$GITHUB_REPOSITORY -b $GITHUB_BRANCH
fi

# GitHub 저장소 폴더로 이동

cd $GITHUB_REPOSITORY

# GitHub 저장소 업데이트

git pull

# Python 패키지 업데이트

pip install -r requirements.txt

# Python 스크립트 실행

python $PYTHON_FILE_NAME.py
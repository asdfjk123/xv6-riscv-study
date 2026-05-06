#!/bin/bash

# 1. 기존에 생성된 컨테이너가 있다면 삭제 (중복 방지)
echo "기존 컨테이너 확인 및 정리 중..."
docker rm -f my-xv6-lab 2>/dev/null

# 2. Docker 이미지 빌드 (이미지 이름: xv6-env)
echo "xv6 환경 이미지를 빌드합니다..."
docker build -t xv6-env .

# 3. 빌드 성공 시 컨테이너 실행 및 내부 진입
if [ $? -eq 0 ]; then
    echo "빌드 성공! 컨테이너를 실행합니다."
    docker run -it --name my-xv6-lab xv6-env /bin/bash
else
    echo "빌드에 실패했습니다. Dockerfile이 같은 폴더에 있는지 확인해주세요."
fi

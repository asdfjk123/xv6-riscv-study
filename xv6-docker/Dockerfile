# OS 환경 설정 (Ubuntu 20.04 기반)
FROM ubuntu:20.04


# 필수 패키지 설치
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    gdb-multiarch \
    qemu-system-misc \
    gcc-riscv64-linux-gnu \
    && rm -rf /var/lib/apt/lists/*


# 작업 디렉터리 설정 및 소스 코드 가져오기
WORKDIR /home/xv6
RUN git clone https://github.com/mit-pdos/xv6-riscv.git .


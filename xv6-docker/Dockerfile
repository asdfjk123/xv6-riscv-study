# OS 환경 설정 (Ubuntu 24.04 기반 - QEMU 7.2 이상을 위해 업데이트)
FROM ubuntu:24.04

# 필수 패키지 설치 (Makefile에서 요구하는 bc 등 추가)
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    gdb-multiarch \
    qemu-system-misc \
    gcc-riscv64-linux-gnu \
    bc \
    && rm -rf /var/lib/apt/lists/*

# 작업 디렉터리 설정 및 소스 코드 가져오기
WORKDIR /home/xv6
RUN git clone https://github.com/mit-pdos/xv6-riscv.git .

# 컨테이너 시작 후 프로그램 시작
CMD ["sh", "-c", "make qemu && /bin/bash"]

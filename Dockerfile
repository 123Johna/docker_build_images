
# 基础镜像（可以改成你需要的源镜像，如ubuntu:22.04）
FROM python:3.10-slim

# 安装系统依赖
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# 安装python第三方包
RUN pip install --no-cache-dir requests pandas flask

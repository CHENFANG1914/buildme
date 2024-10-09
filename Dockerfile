# 使用 Go 语言的 Alpine 镜像作为基础镜像
FROM golang:1.20-alpine

# 设置工作目录
WORKDIR /src

# 复制当前目录的内容到工作目录
COPY . .

# 下载依赖
RUN go mod download

# 构建客户端和服务器
RUN go build -o /bin/client ./cmd/client
RUN go build -o /bin/server ./cmd/server

# 使用 JSON 格式的 CMD 指令
CMD ["echo", "Hello, world!"]
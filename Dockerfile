
# 使用官方 Node 镜像作为构建环境
FROM node:18 AS build

# 设置工作目录
WORKDIR /app

# 拷贝 package 文件并安装依赖
COPY package*.json ./
RUN npm ci

# 拷贝源代码并构建
COPY . .
RUN npm run build

# 使用 Nginx 作为生产镜像
FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html

# 拷贝自定义 Nginx 配置（可选）
# COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
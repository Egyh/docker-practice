FROM nginx:latest

COPY index.html /usr/share/nginx/html

EXPOSE 80

# Nginxをフォアグラウンドで実行
CMD ["nginx", "-g", "daemon off;"]
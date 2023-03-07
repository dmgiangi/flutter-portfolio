FROM arm64v8/nginx:1.23.3
COPY build/web /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
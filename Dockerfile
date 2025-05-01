FROM nginx:alpine
Run rm -rf /usr/share/nginix/html/*
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
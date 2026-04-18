FROM nginx:alpine
ARG CACHEBUST=1
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY public/ /usr/share/nginx/html/
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
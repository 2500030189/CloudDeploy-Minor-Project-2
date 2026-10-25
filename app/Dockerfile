
FROM nginx:alpine

# Update Alpine packages to include available security fixes
RUN apk update && apk upgrade --no-cache

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

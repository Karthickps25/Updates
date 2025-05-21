FROM nginx:alpine

# Remove default html
RUN rm -rf /usr/share/nginx/html/*

# Copy your actual site files only
COPY updates/Index.html /usr/share/nginx/html/index.html
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 8023

CMD ["nginx", "-g", "daemon off;"]

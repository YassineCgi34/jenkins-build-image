FROM nginx:latest
RUN sed -i 's/nginx/yass/g' /user/share/nginx/html/index.htm
EXPOSE 80
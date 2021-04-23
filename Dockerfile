FROM nginx:1.19.0
COPY ./_build/html/ /usr/share/nginx/html

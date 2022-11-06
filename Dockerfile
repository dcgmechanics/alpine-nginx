FROM alpine

RUN apk add nginx

COPY ./index.html /home/
COPY ./default.conf /etc/nginx/http.d

CMD ["nginx","-s","reload;"]
CMD ["nginx","-g","daemon off;"]

EXPOSE 80

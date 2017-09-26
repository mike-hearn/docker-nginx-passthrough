FROM nginx:alpine

ADD passthrough_conf.template /etc/nginx/conf.d/passthrough_conf.template

CMD /bin/sh -c "envsubst < /etc/nginx/conf.d/passthrough_conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"

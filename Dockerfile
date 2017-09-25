FROM nginx

ADD passthrough_conf.template /etc/nginx/conf.d/passthrough_conf.template

CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/passthrough_conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'" 

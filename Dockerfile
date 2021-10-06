FROM nginx:1.20-alpine

RUN apk add --no-cache \
    bash \
    git \
    openssh;

RUN mkdir /root/.ssh/

COPY .ssh /root/.ssh/

RUN chmod 600 /root/.ssh/id_rsa

RUN touch /root/.ssh/known_hosts

RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

RUN git clone git@github.com:tudorteisanu/test-deploy.git

RUN cd test-deploy && mkdir -p /var/www/html/front/dist && cp ./ /var/www/html/front/dist -r

COPY front.conf /etc/nginx/conf.d/default.conf

FROM openresty/openresty:alpine-fat
LABEL author="1141591465@qq.com"
RUN  apk add --update ca-certificates  openssl-dev
COPY code/resty/s3.lua /usr/local/openresty/lualib/resty/s3.lua
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-s3
EXPOSE 80
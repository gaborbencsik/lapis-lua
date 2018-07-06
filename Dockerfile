FROM lapis-base-docker

# RUN luarocks install coxpcall
# RUN luarocks install copas
# RUN luarocks install xavante

COPY . /app
COPY ./logs /usr/local/openresty/nginx/logs

# WORKDIR /app

# ENTRYPOINT ["/app/entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]
CMD ["server", "production"]

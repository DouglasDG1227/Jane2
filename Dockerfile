FROM nginx:alpine

# Limpar HTML padrão
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/conf.d/default.conf

# Copiar build compactado e config
COPY dist.zip /tmp/dist.zip
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Descompactar dist.zip
RUN apk add --no-cache unzip && unzip /tmp/dist.zip -d /usr/share/nginx/html && rm /tmp/dist.zip

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

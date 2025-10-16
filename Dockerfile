# Etapa única — apenas Nginx, sem Node
FROM nginx:alpine

# Remover conteúdo padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar todos os arquivos do projeto para a pasta pública do Nginx
COPY . /usr/share/nginx/html

# Expor a porta padrão HTTP
EXPOSE 80

# Rodar o servidor
CMD ["nginx", "-g", "daemon off;"]

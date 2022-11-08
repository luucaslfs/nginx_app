# Desafio Sensedia 2023 - Lucas Florencio

Projeto de uma aplicação NGINX personalizada em Container

## 🚀 Começando

Essas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de desenvolvimento e teste.

### 📋 Pré-requisitos

Precisaremos do [Docker](https://www.docker.com/) instalado na máquina.

## ⚙️ Executando 

Para iniciar o serviço NGINX, precisamos fazer o download do repositório para uma pasta local:
```
# curl 
```

Com o working dir setado para a pasta que contém nosso dockerfile, execute o seguinte comando para criar uma imagem personalizada do NGINX:
```
# docker build -t mynginx_img .
```

Agora, execute o seguinte comando para subir um container a partir da imagem recém criada com escuta na porta 80 do host direcionada à porta 80 do container:
```
# docker run --name mynginx -p 80:80 -d mynginx_img
```

# 🔧 Controles

Para dar reload na configuração do container, execute o seguinte comando:
```
# docker kill -s HUP mynginx
```

Para reiniciar o container, execute o seguinte comando:
```
# docker restart mynginx
``` 
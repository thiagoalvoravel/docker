#comandos

#exibe a versão do docker
docker version

#cria um container com a respectiva imagem passada como parâmetro
docker run NOME_DA_IMAGEM

#cria um container com a respectiva imagem passada como parâmetro com um volume no respectivo caminho do container
docker run -v "[CAMINHO_VOLUME_LOCAL:]CAMINHO_VOLUME_CONTAINER" NOME_DA_IMAGEM

#cria um container com variáveis de ambiente e com a respectiva imagem passada como parâmetro
docker run -e VARIAVEL="VALOR" NOME_DA_IMAGEM

#cria um container com a respectiva imagem passada como parâmetro e atribuindo um nome ao container
docker run --name NOME_DO_CONTAINER NOME_DA_IMAGEM

#cria um container com a respectiva imagem passada como parâmetro e acessa o terminal interativo do container criado
docker run NOME_DA_IMAGEM -it

#cria um container com a respectiva imagem passada como parâmetro sem atrelar o terminal ao container
docker run -d NOME_DA_IMAGEM

#cria um container com a respectiva imagem passada como parâmetro e vincula os serviços rodando com portas no container com portas da máquina host
docker run -P NOME_DA_IMAGEM

#cria um container com a respectiva imagem passada como parâmetro e vincula as portas específicas no host a serem usadas pelos serviços
docker run -p PORTA_HOST:PORTA_CONTAINER NOME_DA_IMAGEM

#listar os containers ativos
docker ps

#listar os IDs dos containers ativos
docker ps -q

#listar os containers criados
docker ps -a

#iniciar um container específico
docker start ID_CONTAINER

#iniciar um container específico integrando os terminais e acessando o terminal interativo do container
docker start -a -i ID_CONTAINER

#parar um container específico
docker stop ID_CONTAINER

#parar os containers listados pelo comando dentro dos parênteses
docker stop $(sudo docker ps -q)

#remover um container específico
docker rm ID_CONTAINER

#remover todos os containers inativos
docker container prune

#listar as imagens criadas
docker images

#remover uma imagem específico
docker rmi ID_CONTAINER ou docker rmi NOME_DA_IMAGEM

#lista as portas usadas pelo container
docker port ID_CONTAINER 

#inspeciona o container
docker inspect ID_CONTAINER

#criar uma imagem a partir de um Dockerfile especificando o nome do arquivo no diretório atual
docker build -f Dockerfile .

#criar uma imagem a partir de um Dockerfile especificando uma tag
docker build -t CRIADOR/NOME_IMAGEM

#criar uma rede usando o driver bridge
docker network create --driver bridge NOME_DA_REDE

#criar imagens (build) a partir de um composer existente
docker-compose build

#subir os serviços a partir de um composer existente
docker-compose up
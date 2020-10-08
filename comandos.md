#comandos

#exibe a versão do docker
docker version

#cria um container com a respectiva imagem passada como parâmetro
docker run NOME_DA_IMAGEM

#cria um container com a respectiva imagem passada como parâmetro e acessa o terminal interativo do container criado
docker run NOME_DA_IMAGEM -it

#listar os containers ativos
docker ps

#listar os containers criados
docker ps -a

#iniciar um container específico
docker start ID_CONTAINER

#iniciar um container específico integrando os terminais e acessando o terminal interativo do container
docker start -a -i ID_CONTAINER

#parar um container específico
docker stop ID_CONTAINER

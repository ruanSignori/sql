# Instalação Postgres no Ubuntu

Execute os comandos de forma sequencial


> Criar as configurações do repositório:


```bash
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
```

<hr>

> Importar a chave de login do repositório:
```bash
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
```

<hr>

> Atualizar pacotes do Ubuntu
```bash
sudo apt-get update
```

<hr>

> Instalar a versão mais recente do PSQL. <br>
Se você quer instalar uma versão específica, acrescente 'postgresql-12' ou outra versão no comando abaixo
```bash
sudo apt-get -y install postgresql
```
<hr>

> Alterar para o usuário postgres

```bash
sudo -u -i postgres
```

```bash
psql
```

<hr>

> Alterar a senha (Por padrão é vazia)

```bash
\password
```

<br><br>

# Instalação do PSQL

> Instalar o curl

```bash
sudo apt install curl
```
<hr>

> Instalar chave publica

```bash
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
```
<hr>

> Criar repositório de configuração

```bash
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
```

<hr>

> Instalar pgadmin4 somente para a web

```bash
sudo apt install pgadmin4-web 
```

<hr>

> Configurar o servidor, confirmar a instalação do Apache

```bash
sudo /usr/pgadmin4/bin/setup-web.sh
```

> Em seguida acessar: http://127.0.0.1/pgadmin4/browser/
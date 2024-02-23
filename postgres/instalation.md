# Instalação Postgres no Ubuntu

Execute os comandos de forma sequencial


> Create the file repository configuration:


```bash
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
```

<hr>

> Import the repository signing key:
```bash
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
```

<hr>

> Update the package lists:
```bash
sudo apt-get update
```

<hr>

> Install the latest version of PostgreSQL. <br>
If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
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
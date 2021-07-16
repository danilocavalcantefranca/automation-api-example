# automation-api-example

<br>


## Clonando Projeto

Com o git instalado em sua máquina, execute o comando:
```
git clone https://github.com/danilocavalcantefranca/automation-api-example.git
```

<br>

### Pré-requisitos

Instale um dos versionadores de Ruby abaixo:

#### RBENV:
```
https://github.com/rbenv/rbenv
```

#### RVM:
```
https://rvm.io/
```

<br>

### Instalando o ruby

Agora, seguindo os comandos do versionador instalado anteriormente, instale a versão 2.5.3 do ruby.


### Instalação

Instalando o bundler

```
$ gem install bundler
```

Dentro da pasta do automation-api-example execute o comando:

```
$ bundle install
```


<br>

# Rodando os testes


Profiles de automação:

```
  * automation-api-example-stg
  * automation-api-example-prd
```


Exemplo de utilização: 
```
$ cucumber -p automation-api-example-stg
```

<br>

# Rodando os testes com Docker


Com o docker instalado em sua máquina, execute o comando na pasta do projeto:

```
docker build -t automation-api-example .
docker run  automation-api-example

```

Caso queira rodar o teste para outro ambiente execute o comando abaixo:

```
docker run -e "environment=automation-api-example-prd" automation-api-example .
```

# Como usar:
## ASDF
### Ubuntu/Debian: 
- Abra o Terminal
- Clone o repositorio do asdf
``` bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
```
- Abra o arquivo ~/.bashrc: 
```bash
vim .bashrc
```
- Cole as seguintes linhas:
```bash
source ~/.asdf/asdf.sh
source ~/.asdf/completions/asdf.bash
```
- Salve as alterações do vim:
```bash
:wq
```
- Execute o comando:
```bash
source .bashrc
```
- Teste o asdf:
```bash
asdf info
```
- OBSERVAÇÃO: se estiver usando zshrc, basta fazer os mesmos passos para o .zshrc

## Ruby 2.7.0
- Execute os comandos:
``` bash
asdf install ruby 2.7.0
asdf local ruby 2.7.0
```

## Programa:
- Execute o comando 
``` bash 
bundle install
```
-  Caso haja erro para instalar o puma, execute o comando:
``` bash
DISABLE_SSL=true gem install puma -v '3.6.0'
bundle install
```
- Prepare a base de dados:
``` bash
bundle exec rake db:reset
bundle exec rake db:migrate
bundle exec rake db:test:prepare
```
- Para execução dos testes, use:
``` bash 
bundle exec cucumber features/ # para todas as features
bundle exec cucumber features/exemplo.feature # para apenas uma feature

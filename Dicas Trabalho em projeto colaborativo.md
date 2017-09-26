## O processo de contribuição basicamente é o seguinte:
1. Ao iniciar o projeto  
* Fork do projeto para o seu usuário.  
* Clone do projeto forkado na sua máquina.

2. Ao iniciar uma nova atividade  
* Crie uma [issue] para documentar o que você vai fazer
* Antes de iniciar nova branch, atualização do seu projeto com o projeto original (forkado).  
* Crie uma branch para o seu objetivo naquele trabalho.  
* (Trabalhe na sua branch).  
* Adicionar, commitar e enviar suas alterações para o seu GitHub.  

3. Ao término de uma tarefa (issue)
* Abrir um pull request da sua branch para o projeto original.  
* Excluir sua branch


## Atualizar o repositório forkado  
1. Setar um upstream  
```javascript
git remote add upstream https://github.com/cscw-class/TrabalhoAV1/
```

2. Atualizar  
```javascript
git pull upstream
```

3. Fazer o rebase do master com o master do upstream
git rebase upstream/master


## Criar uma issue para começar a trabalhar  
Clique na URL abaixo para criar uma nova issue de propsta de trabalho  

https://github.com/cscw-class/TrabalhoAV1/issues

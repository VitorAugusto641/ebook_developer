Para baixar os commits é necessário mandar:

git pull origin main 

Para verificar se foi feito, podemos rodar:

`git log`



/ Conflito no Git /

Fica grifado a parte que você fez alteração e a outra pessoa.
Em caso de conflito, deve entrar em acordo ambas pessoas. 
Após acordo e modificações, é só publicar novamente.


/ Desfazendo um Commit /

1º git log  -                       | Para ver os historicos das atualizações | Cada commit tem um id único, proucure o id que você quer desfazer.

2º git revert id_do_commit 

Exemplo: git revert fc710a16796d2b362bfc8ae7b0f2a953b3abab7b

3º git push origin main             | Para mandar para o repositório.


/ Deletando um commit 

Observação: É interessante fazer só se seu tiver apenas commitado, e não subido para o git, tiver local ainda. /

1º git log  -                       | Para ver os historicos das atualizações | Cada commit tem um id único, proucure o id que você quer desfazer.

2º git reset --hard id_do_commit 

Exemplo: git reset --hard fc710a16796d2b362bfc8ae7b0f2a953b3abab7b

/ Alterando o ultimo Commit: /

Comando:

git commit --amend -m "Mensagem Desejada"



é feita via terminal, com o comando:
/
ssh-keygen -t ed25519 -C "SEU EMAIL AQUI":

Exemplo:

ssh-keygen -t ed25519 -C "fulano@email.com.br"
/

Ai ele vai dar essa resposta:
Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/rodrigo/.ssh/id_ed25519): /

Só dar enter.

Enter passphrase (enter for no passphrase):

Essa segunda pergunta é para indicarmos se desejamos adicionar uma senha à chave SSH que será gerada. Caso você digite uma senha, toda vez que 
executar o comando git push será necessário digitar tal senha. Ao não digitar nada e apenas apertar a tecla enter, a chave será gerada sem a proteção de uma senha.

Por fim, a terceira e última pergunta é apenas para confirmar a senha anterior:

Enter same passphrase again:
A chave será gerada e a seguinte mensagem será exibida no terminal:

Your identification has been saved in /home/rodrigo/.ssh/id_ed25519
Your public key has been saved in /home/rodrigo/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:jxAkhGR7NHm/0fcmyPnErZxSKr+ObsH7r4AC/vUNvPY fulano@email.com.br
The key's randomart image is:
+--[ED25519 256]--+
| .oo=..          |
| ..o.+.          |
|  . .... .       |
|   .   .o . .    |
|  .   ..S+ = o   |
| . .   ++o+ = +  |
|  . . o =o.* =   |
|   . o .=*o =    |
|    .  +=*E=.    |
+----[SHA256]-----+

Na primeira linha da mensagem você consegue identificar o diretório no seu computador no qual a chave foi salva. Agora, 
basta acessar tal diretório para ter acesso à chave SSH.


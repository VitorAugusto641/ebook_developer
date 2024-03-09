                                                / Git e GitHub: compartilhando e colaborando em projetos /

' Após criar o repositorio dentro do Git, por exemplo: /ebook_developer 
// Conceitos:

// git --version | pwd | cd | cd.. | ls | git init | git status | git add . | git add pasta| git branch -m master main | 


// git --version             | Verificação de versão do git 
// pwd                       | Verifica qual pasta está o cmd
// cd                        | Entra na pasta Exemplo: cd \desktop
// cd ..                     | Volta uma pasta
// ls                        | Mostras os arquivos que tem nesse diretório
// git init                  | É o ponto de partida para o controle de versão em um projeto Git. 1º Passo
// git status                | Quando você executa este comando, o Git fornece informações sobre quais arquivos foram modificados, adicionados ou excluídos desde o último commit
// git branch -m master main | É usado para renomear a branch atual de master para main
// git add .                 | Adiciona todos os arquivos da pasta que quer ser monitorada
// git add nomepasta         | Adiciona a pasta em específico que foi modificada 
// git commit -m "mensagem"  | É usado para registrar as alterações feitas nos arquivos do seu projeto no histórico de versões do Git
// git log                   | Histórico de alterações, lista todos os commits  
// git log --oneline         | Histórico de alterações com apenas a primeira parte da hast e mensagem de commit
// git log -p                | Histórico de alterações mostrando os arquivos que foram modificados
// git log --help            | É usado para exibir a documentação e as opções disponiveis para o comando git log no navegador.
// mkdir nomeDaPasta         | Cria uma pasta      
// git init -bare            | Vc entra na pasta, e depois manda o comando desejado, então se Cria um repositório git que é usado para armazenar e compartilhar o código, mas não permite editar ou commitar arquivos nele
// git remote add NomedaPasta Endereço | git remote add vitor C:/Users/ALURA/Documents/git-e-github/servidor | Adicionando um repositorio local
// git remote                | Criar, visualizar e excluir conexões com outros repositórios.
// git push NomeDaPasta main | É usado para enviar o conteúdo do repositório local para um repositório remoto
// git remote rename origin local | Renomenado o nome da pasta 'origin' para 'local' por exemplo. 

// CONFIGURANDO GIT PRIMEIRA VEZ
// git config --local user.name "Seu nome aqui"
// git config --local user.email "seu@email.aqui"

// Termos:
// HEAD: Estado atual do nosso código, ou seja, onde o Git os colocou
// Working tree: Local onde os arquivos realmente estão sendo armazenados e editados
// index: Local onde o Git armazena o que será commitado, ou seja, o local entre a working tree e o repositório Git em si.'

/1 - Adicionando um repositorio Remoto: /

git remote add apelido url

apelido: Este é um nome que você atribui ao repositório remoto
url: Aqui, você insere a URL do repositório remoto

'Exemplo:

git remote add origin git@github.com:VitorAugusto641/ebook_developer.git 
'

/ 2 - Listar os repositórios remotos: /

'Para listar os repositórios remotos associados ao seu projeto local, você pode utilizar o comando git remote -v. 
Isso exibirá uma lista de todos os repositórios remotos vinculados ao seu projeto, juntamente com suas URLs.'

/ 3 - Remover um repositórios remotos: /

'Caso você não precise mais de um repositório remoto específico, pode removê-lo com o comando git remote remove apelido. 
Substitua 'apelido' pelo nome do repositório remoto que deseja remover. Aqui está um exemplo:'

git remote remove origin

/ 4 - Alterar a URL de um repositório remoto: /

git remote set-url apelido nova_url

Substitua 'apelido' pelo nome atual do repositório remoto e 'novo_apelido' pelo novo nome que você deseja atribuir a ele. 

'Exemplo:'
git remote set-url origin https://github.com/seu-usuario/seu-repositorio.git

/ Podemos adicionar participantes em nosso repositorio para fazer alterações /

Entramos no repositorio dentro do git ; depois vamos em configurações ; Colaboradores ; Adicionar Pessoas ; e colocamos username ou email da pessoa. 

/ Para compartilhar apenas trechos de código, podemos utilizar o ' New gist ' /

Próximo da aba do perfil, tem o '+' , ao clicar aparece 'New gist', ao selecionar, abre a tela, onde compartilhamos nosso codigo e depois
de publicado, pegamos o link e compartilhando com quem quisermos.
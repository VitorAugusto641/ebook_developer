// 1º Abrimos o terminal do 'git bush'
// 2º Entra na pasta desejada
// 3º git init  

/Observação:/
'Transformar o diretório do projeto em um repositório Git, com pasta como a master.'
'git init serve para criar um novo repositório Git e por isso deve ser executado apenas uma única vez'

// git add .
// git commit -m "Exemplos da aula 1"
// git branch -M main
// git remote add origin git@github.com:VitorAugusto641/ebook_developer.git          'muda no link para ssh dentro do git'
// git push -u origin main

// git status - Caso queira confirmar se subiu ou não


'Se o computador for novo, vai dar esse erro: 
'git push -u origin main The authenticity of host github.com (20.201.28.151) cant be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names.''
'Significa que está sem a chave ssh no git, precisa colocar a chave ssh lá'

/Depois da primeira vez/

// git add .
// git comit -m "Exemplos da aula 1"
// git push -u origin main

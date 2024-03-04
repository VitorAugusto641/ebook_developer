'Curso 01 : Lógica da Programação: Mergulhe em Programação com Javascript : https://cursos.alura.com.br/course/logica-programacao-mergulhe-programacao-javascript'

                                                / Módulo 01 : Iniciando com Javascript /


-------------------------------------------------------------------------------------------------------------------------------------

/ Alert : 

// Conceito: 
'O alert é uma função em JavaScript que exibe uma caixa de diálogo modal com uma mensagem e um botão "OK"'

// Sintaxe: 
alert('mensagem');

// Exemplo Prático:
Exibe uma caixa de alerta com a mensagem "Olá mundo!"
alert('Olá mundo!');

-------------------------------------------------------------------------------------------------------------------------------------

/ Prompt :

// Conceito: 
'O prompt é uma função em JavaScript que exibe uma caixa de diálogo modal com uma mensagem opcional e uma caixa de entrada de texto, 
Permitindo que o usuário insira um valor'

// Sintaxe:
prompt('mensagem', 'valor padrão');

// Exemplo Prático:
var idade = prompt('Por favor, insira sua idade:');

-------------------------------------------------------------------------------------------------------------------------------------

' Declaração de Variaveis '

/ Var :

// Conceito: ' Variáveis declaradas vardentro de um bloco {} podem ser acessadas de fora do bloco:'

// Sintaxe:
var nome = "João";

// Exemplo:

{
  var x = 2;
}
/ x CAN be used here

/
/ Let :

// Conceito: 
'Permite que você declare variáveis que sao restritas ao escopo do bloco em que são declaradas '

// Sintaxe:
let contador = 0;

// Exemplo:

Variaveis declaradas dentro de um bloco {} não podem ser acessadas fora do bloco:

{
  let x = 2;
}
/ x can NOT be used here 

/ Const:

// Conceito: 
'Permite que você declare variáveis com um valor que não pode ser alterado depois de definido'

// Sintaxe:
const pi = 3.14;


`${Variavel}` - 'Declarar uma Variavel' se for dentro de um texto como em um console, use a crase ``




-------------------------------------------------------------------------------------------------------------------------------------
Condicionais:

/ if /

if (comparaA == comparaB) {
    // Faça algo caso seja verdadeiro
}

Observação aos comparados lógicos como '=' ; '==' ; '==='; entre outros.

/ if e else /

let diaDaSemana = prompt ('Qual é o dia da semana ? ');
if (diaDaSemana == 'Sábado' || diaDaSemana == 'Domingo') {
    alert('Bom final de semana! ')
}else{
    alert('Não é fim de semana')
}

/ Operador Ternário

// Conceito: 

'O operador ternário é um operador condicional que permite avaliar uma expressão e retornar um valor com base em uma condição verdadeira ou falsa'

// Sintaxe:

'condicao ? valor_se_verdadeiro : valor_se_falso;'

// Exemplo Prático:

let palavraTentativa = numeroDeTentativa > 1 ? 'tentativas' : 'tentativa'
    alert(`Você acertou o número secreto ${numeroSecreto} com ${numeroDeTentativa} ${palavraTentativa}`)

-------------------------------------------------------------------------------------------------------------------------------------
Loops:


/ While 

// Conceito: 
'É uma estrutura de controle de fluxo que permite executar repetidamente um bloco de código enquanto uma condição específica for verdadeira'

// Sintaxe: 

while (condition) {
    
}

// Exemplo Prático:

alert('Bem vindo ao Jogo do número secreto!');

let numeroSecreto = 5;
console.log(numeroSecreto);
let chute
let numeroDeTentativa = 1;


while ( chute != numeroSecreto) {
    chute = prompt('Escolha um numero entre 1 e 10');

    if (numeroSecreto == chute){
        alert(`Você acertou o número secreto ${numeroSecreto} com ${numeroDeTentativa} tentativa`)
    } else {
        if(chute > numeroSecreto){
            alert(`O número secreto é menor que o ${chute}`)
        }else{
            alert(`O número secreto é maior que o ${chute}`)
        }
        // numeroDeTentativa = numeroDeTentativa + 1;
        numeroDeTentativa++                 // Acrescenta +1 no valor de Numero de tentativas, para contar
    }  
    
}

'É um jogo, onde está em loop até você acertar o número, onde o 'chute' recebe nenhum valor, somente depois dentro do loop'

-------------------------------------------------------------------------------------------------------------------------------------

/ Operadores Lógicos

// AND (&&)    if (idade > 18 && possuiCarteira) {}            (A > B) && (B == C)
// OR (||)     if (temMaça || temBanana) {}                    (A > B) ǀǀ (B == C)
// !           Negação                                         !(A == B)       Verdadeiro se A NÃO for igual a B
// =           Atribuição
// ==          Compara valores
// ===         Compara valores e tipos
// !=          Diferente
// <           Menor que
// >           Maior que
// <=          Menor ou Igual
// >=          Maior ou Igual
// +=          Atribuição com Adição - Equivale = a: a + 5      a += 5; 
// -+          Atribuição com Subtração
// *=          Atribuição com multiplicação
// /=          Atribuição com divisão
// %=          Atribuição com resto da divisão

-------------------------------------------------------------------------------------------------------------------------------------

/ Break

// Conceito: 
'O comando break é uma instrução que permite interromper a execução de um loop (como for, while ou do-while) ou de um switch, 
Antes de atingir o final do bloco de código associado.'

// Sintaxe: 
break;

// Exemplo Prático:

alert('Bem vindo ao Jogo do número secreto!');

let numeroSecreto = 5;
console.log(numeroSecreto);
let chute
let numeroDeTentativa = 1;


while ( chute != numeroSecreto) {
    chute = prompt('Escolha um numero entre 1 e 10');

    if (numeroSecreto == chute){
        break;
    } else {
        if(chute > numeroSecreto){
            alert(`O número secreto é menor que o ${chute}`)
        }else{
            alert(`O número secreto é maior que o ${chute}`)
        }
        numeroDeTentativa++
    }  
    
}
let palavraTentativa = numeroDeTentativa > 1 ? 'tentativas' : 'tentativa'
    alert(`Você acertou o número secreto ${numeroSecreto} com ${numeroDeTentativa} ${palavraTentativa}`)

-------------------------------------------------------------------------------------------------------------------------------------


/ parseInt()

// Conceito: 
'É usada para analisar uma string e retornar um número inteiro com base nessa string. Ela tenta extrair e retornar o primeiro número inteiro encontrado na string.'

// Sintaxe: 
'parseInt(string, base);'

// Exemplo Prático:

let numeroSecreto = parseInt(Math.random() * 10 + 1);
console.log(numeroSecreto) // 4

'Então por exemplo, o Math.random iria criar valores aleatórios de 0 a 1 então 0,01551561 ; 0,155154 ; usando o parseInt ele retorna o número inteiro, no caso o 0'
' como multiplicamos por 10 e somamos +1 ele começou a gerar valores de 0 a 10 e no exemplo gerou o número 4 como aleatorio'
-------------------------------------------------------------------------------------------------------------------------------------


/ Math.random()

// Conceito: 
'A função Math.random() é usada para gerar um número pseudoaleatório entre 0 (inclusive) e 1 (exclusivo). 
Isso significa que ele retorna um número decimal aleatório no intervalo de 0 até, mas não incluindo, 1.'

// Sintaxe: 
Math.random();

// Exemplo Prático:

let numeroAleatorio = Math.random(); Podemos também multiplicar por 10 caso queira número de 0 a 10. // parseInt(Math.random()*10+1)

console.log(numeroAleatorio); // Saída: um número decimal aleatório entre 0 e 1

-------------------------------------------------------------------------------------------------------------------------------------


                                                / Fim do curso: Módulo 01 : Iniciando com Javascript /


                                                / Curso: Lógica de programação: explore funções e listas /

-------------------------------------------------------------------------------------------------------------------------------------
                                                
/ FUNCTION /

// Definição:
'Encapsular blocos de código reutilizáveis e executáveis'

'Tipo de Função:'               | 'Exemplo de Código:'                      | 'Uso:'
Sem retorno e sem parâmetro		| function saudacao() { ... }	            |Execução de bloco de código simples.
Sem retorno e com parâmetro		| function cumprimentar(nome) { ... }       |Execução de bloco de código com argumentos.
Com retorno e sem parâmetro		| function gerarNumeroAleatorio() { ... }   |Cálculo e retorno de um valor específico.
Com retorno e com parâmetro		| function somar(a, b) { ... }	            |Cálculo e retorno baseado em argumentos.
Função anônima		            | let saudacao = function() { ... };	    |Definição de função sem nome localmente.
Arrow function		            | let quadrado = x => x * x;	            |Definição concisa de funções curtas.



-------------------------------------------------------------------------------------------------------------------------------------

/ FOR

// Conceito: 

O código se repete, enquanto a condição for verdadeira
// Primeira expressão: é executada apenas uma única vez
// Segunda expressão: condição de execução
// Terceira expressão: é executada sempre ao final do bloco

// Sintaxe: 

for (let i = 0; i < 5; i++) {
    console.log(i);
}

// Exemplo Prático:

function mostrarTabuada(numero) {
  for (let i = 1; i <= 10; i++) {
    let resultado = numero * i;
    console.log(`${numero} x ${i} = ${resultado}`);
  }
}

-------------------------------------------------------------------------------------------------------------------------------------

/ ARRAY

// Conceito: 
Armazena diversos valores e podem ser acessados
Indice: Posição do elemento na lista ; Sempre começa com 0

// Sintaxe: 


// Exemplo Prático:


// Exemplo de uso


/MÉTODOS DENTRO DO ARRAY:
/

/ Length /

'Mostra o tamanho da lista:'

let numeros = [1, 5, 9] 
numeros.length
console.log(numeros.length) // 3

/ Acessando a lista /

let numeros = [1, 5, 9] 
console.log(numeros[0]) // 1 

/ Acessar sempre o último valor da lista /

let numeros = [1, 5, 9] 
console.log(numeros[numeros.length - 1]) // 9

/ includes /

'.includes - Verifica se um array contém um determinado elemento e retorna verdadeiro ou falso com base nessa verificação '

Exemplo Prático:

const array = [1, 2, 3, 4, 5];

console.log(array.includes(3)); // Retorna true, pois 3 está presente no array
console.log(array.includes(6)); // Retorna false, pois 6 não está presente no array

/ push /

' push() - Adiciona elemento ao Array'                                          

Exemplo Prático:

let numeros = [1, 5, 9] 
numeros.push(15)                                       
console.log(numeros) // [ 1, 5, 9, 15 ]

/ pop /

'Para remover o último elemento, você pode usar o método pop.'

let frutas = ["Maçã", "Uva", "Laranja"];
frutas.pop(1);
console.log(frutas); // Saída: ["Maçã", "Uva"]



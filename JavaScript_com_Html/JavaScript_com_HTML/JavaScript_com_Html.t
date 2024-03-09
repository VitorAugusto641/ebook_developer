
/ JavaScript com HTML /

-------------------------------------------------------------------------------------------------------------------------------------

/ document.querySelector(tag) :

// Conceito: 

permite selecionar um único elemento HTML com base em um seletor CSS.

// Sintaxe:

document.querySelector(seletorCSS);

// Exemplo Prático:

No arquivo .html:                     <h1>Adivinhe o <span class="container__texto-azul">numero secreto</span></h1>


    let campo = document.querySelector('h1');  // Recebe o paramêtro 'h1'.

-------------------------------------------------------------------------------------------------------------------------------------

/  .innerHTML 

// Conceito: 

O atributo innerHTML é útil sempre que você precisar acessar ou modificar o conteúdo HTML de um elemento.

// Sintaxe:

Sintaxe para leitura:
var conteudoHTML = elemento.innerHTML;

Sintaxe para escrita:
elemento.innerHTML = novoConteudoHTML;


// Exemplo Prático:

<div id="meuDiv">Olá, mundo!</div>

'E você queira modificar o conteúdo do <div> usando JavaScript, você pode fazer assim:'

var meuDiv = document.getElementById('meuDiv');
meuDiv.innerHTML = 'Olá, novo conteúdo!';               //Após a execução desse código, o conteúdo do <div> será substituído por "Olá, novo conteúdo!".

// 0Outro Exemplo:

    let resultado = document.getElementById('resultado');
    resultado.innerHTML = `<label class="texto__paragrafo">Números sorteados: ${sorteados}</label>`;

-------------------------------------------------------------------------------------------------------------------------------------

/  .textContent

// Conceito: 

Quando queremos inserir ou modificar um texto simples dentro de um elemento HTML.

// Sintaxe:

Sintaxe para leitura:
var texto = elemento.textContent;

Sintaxe para escrita:
elemento.textContent = novoTexto;

// Exemplo Prático:

<div id="meuDiv">Olá, mundo!</div>

'E você queira modificar apenas o texto dentro do <div> usando JavaScript, sem adicionar ou modificar qualquer HTML:'
var meuDiv = document.getElementById('meuDiv');
meuDiv.textContent = 'Olá, novo texto!';


-------------------------------------------------------------------------------------------------------------------------------------
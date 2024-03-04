// //Escolhendo um titulo com vinculo no arquivo HTML:

// let titulo = document.querySelector('h1');
// titulo.innerHTML = "Jogo do número secreto";

// // Colocando um paragrafo com vinculo no arquivo HTML:

// let paragrafo = document.querySelector('p');
// paragrafo.innerHTML = "Escolha um número entre 1 e 10";

// // Colocando funcionalidade ao clicar no botão : Chutar

// function verificarChute() {
//     console.log("Clicou no verificar Chute")
// }

// ==============================================================================================

// Melhorando o Codigo de cima.

// ==============================================================================================

let listaDeNumerosSorteados = [];                               // Uma lista vazia de quais números foram sorteados
let numeroLimite = 10;                                          // Multiplicador dos números aleatórios
let numeroSecreto = gerarNumeroAleatorio();                     // Gerador do número Secreto
let tentativas = 1;                                             // Iniciar com 1 tentiva

function exibirTextoNaTela(tag, texto) {                        // Recebe o paramêtro 'tag' que se referencia como 'h1' , 'p' etc... enquanto o paramêtro 'texto' seria o que vai aparecer na tela 
    let campo = document.querySelector(tag);                    // O Document método querySelector() retorna o primeiro Elementno documento que corresponde ao seletor ou grupo de seletores especificado
    campo.innerHTML = texto;                                    //propriedade innerHTML obtém ou define a marcação HTML ou XML contida no elemento.
    responsiveVoice.speak(texto, 'Brazilian Portuguese Female', {rate:1.2}); 
    //      responsiveVoice.speak(texto, 'Brazilian Portuguese Female', {rate:1.2}); 
    // texto: Isso é a variável ou o valor do texto que você deseja que seja falado em voz alta. Você substituiria isso pelo texto real que deseja falar.
    // 'Brazilian Portuguese Female': Este é o parâmetro que especifica o idioma e o gênero da voz que será usada para falar o texto. 
    // {rate:1.2}); - Especifíca a velocidade de reprodução da voz, velocidade de fala.
}

function exibirMensagemInicial() {
    exibirTextoNaTela('h1', 'Jogo do número secreto');
    exibirTextoNaTela('p', 'Escolha um número entre 1 e 10');
}

exibirMensagemInicial();

function verificarChute() {
    let chute = document.querySelector('input').value;
    
    if (chute == numeroSecreto) {
        exibirTextoNaTela('h1', 'Acertou!');
        let palavraTentativa = tentativas > 1 ? 'tentativas' : 'tentativa';
        let mensagemTentativas = `Você descobriu o número secreto com ${tentativas} ${palavraTentativa}!`;
        exibirTextoNaTela('p', mensagemTentativas);
        document.getElementById('reiniciar').removeAttribute('disabled');
    } else {
        if (chute > numeroSecreto) {
            exibirTextoNaTela('p', 'O número secreto é menor');
        } else {
            exibirTextoNaTela('p', 'O número secreto é maior');
        }
        tentativas++;
        limparCampo();
    }
}

function gerarNumeroAleatorio() {
    let numeroEscolhido = parseInt(Math.random() * numeroLimite + 1);
    let quantidadeDeElementosNaLista = listaDeNumerosSorteados.length;

    if (quantidadeDeElementosNaLista == numeroLimite) {
        listaDeNumerosSorteados = [];
    }
    if (listaDeNumerosSorteados.includes(numeroEscolhido)) {
        return gerarNumeroAleatorio();
    } else {
        listaDeNumerosSorteados.push(numeroEscolhido);
        console.log(listaDeNumerosSorteados)
        return numeroEscolhido;
    }
}

function limparCampo() {
    chute = document.querySelector('input');
    chute.value = '';
}

function reiniciarJogo() {
    numeroSecreto = gerarNumeroAleatorio();
    limparCampo();
    tentativas = 1;
    exibirMensagemInicial();
    document.getElementById('reiniciar').setAttribute('disabled', true)
}








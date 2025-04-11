# Desafio-3
Sobre o Projeto

Este projeto consiste em um sistema de inscrição com autenticação básica, que permite aos usuários criarem contas, fazerem login e preencherem um formulário com seus dados pessoais. Ao concluir o preenchimento, um comprovante de inscrição em PDF é gerado automaticamente.

##Funcionalidades

Cadastro e login com validação de dados;

Armazenamento de informações de login no localStorage;

Formulário completo com validações e campos obrigatórios;

Geração automática de PDF com os dados inseridos no formulário;

Interface personalizada com imagens e layout visual atrativo.

##Melhorias Implementadas

1. Validação de CPF e Telefone

Os campos de CPF e telefone aceitam apenas números;

Letras são automaticamente bloqueadas via JavaScript.


2. Campo “Gênero” no lugar de “Sexo”

A nomenclatura foi atualizada para uma abordagem mais inclusiva;

Adicionada uma opção inicial "Selecione" para evitar preenchimento automático.


3. Campo “Número” com opção “S/N”

Agora é possível digitar “S/N” caso o endereço não tenha número;

O campo foi alterado de number para text, mantendo a validação funcional.


4. Geração de Comprovante em PDF

Após a inscrição, os dados são exibidos e exportados automaticamente em PDF usando a biblioteca html2pdf.js.


5. Organização do Código JavaScript

Toda a lógica foi concentrada no arquivo script.js;

As funcionalidades de cadastro, login e envio de formulário foram separadas de forma clara.

##Tecnologias Utilizadas

HTML5

CSS3

JavaScript puro (Vanilla JS)

Biblioteca html2pdf.js

##Como Utilizar

1. Acesse a página principal (index.html) e crie uma conta;


2. Após o cadastro, entre com seu login;


3. Preencha todos os campos do formulário de inscrição;


4. Clique em “Fazer Inscrição” para visualizar e salvar seu comprovante em PDF.

##Estrutura do Projeto

├── index.html           # Tela de login e cadastro
├── formulario.html      # Página do formulário de inscrição
├── style.css            # Arquivo de estilos
├── script.js            # Arquivo com a lógica do sistema
└── /Assets              # Imagens e ícones utilizados

##Observações

Todos os campos obrigatórios devem ser preenchidos corretamente;

As validações ocorrem apenas no lado do cliente (frontend);

O projeto pode ser facilmente adaptado para uso com um backend, como Firebase ou Node.js.



#language: PT

Feature: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que eu faça login no portal EBAC-SHOP
E finalizar o Checkout

Cenário: Cadastro Válido
Quando eu preencher os campos obrigatórios 
Então deve exibir mensagem de "Finalizar Compra"

Cenário:Campo não preenchido
Quando eu não preencher um ou mais campos obrigatórios
Então deve exibir uma mensagem de alerta nos campos marcados como obrigatório: "Campo obrigatório." 

Cenário: E-Mail inválido
Quando eu digitar o endereço de e-mail "tiarica@ebac.com..br"

Então deve exibir mensagem de alerta: "Endereço de e-mail inválido."
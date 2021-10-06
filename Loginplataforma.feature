#language: pt

Feature: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação do Portal EBAC-SHOP

Cenário: Autentucação Válida
Quando eu digitar usuário "minhatia@ebac.com.br"
E senha "tia321"
Então deve exibir uma mensagem de boas vindas "Olá Tia!"

Cenário: Usuário inexistente
Quando eu figitar o usuário "meutio@ebac.com.br"
E senha "tio456"
Então deve exibir uma mensagem de alerta: "Usuário inexistente"

Cenário: Usuario com ssenha invalida
Quando eu digitar "neta@ebac.com.br"
E senha "pepapig"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

Cenário: Autenticar multiplos usuários
Quando eu digitar <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso

Exemplos:
|usuario|senha|mensagem|
|"vovo@ebac.com.br"|"dentadura"|"Olá Vovó!"
|"primo@ebac.com.br"|"pato741"|"Olá Primo!"
|"prima@ebac.com.br"|"barbie321"|"Olá Prima!"
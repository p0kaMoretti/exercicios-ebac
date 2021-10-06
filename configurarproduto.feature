#language: pt

Feature: Configurar produro
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com o meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse o catalogo de produtos da EBAC-SHOP
Quando eu clicar no produto "Augusta Pulloveeer Jacket"

Cenário: Selecionar cor válida
E selecionar cor "Rosa"
Então deve exibir uma mensagem: "Cor disponível."

Cenário: Selecionar cor inválida
E selecionar cor "Estampa de gatos"
Então deve exibir uma mensagem de alerta: "Cor indisponível."

Cenário: Selecionar quantidade válida
E selecionar a quantidade "9"
Então deve exibir uma mensagem: "Quantidade Válida."

Cenário: Selecionar quantidade inválida
E selecionar a quantidade "12"
Então deve exibir uma mensagem de alerta: "Quantidade inválida."

Cenário: Limpar configuração do produto
E clicar em Limpar
Então deve resetar as configurações originais do produto

Cenário: Válidar multiplas cores
E seleionar <cor>
Então deve exibir uma <mensagem> de válidação

Exemplos:
|cor|mensagem
|"Preto"|"Cor disponível."
|"Verde"|"Cor disponível."
|"Azul"|"Cor disponível."
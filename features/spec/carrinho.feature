# language: pt

Funcionalidade: Adicionar ao carrinho
    Como um cliente do site FakeEcommerce
    Gostaria de adicionar produto ao carrinho
    Para customizar as compras

    Contexto:
        Dado que esteja na página inicial

    @adicionando_produto_ao_carrinho
    Cenário: Adicionar produto válido ao carrinho
        Quando buscar pelo produto "Faded Short Sleeve T-shirts"
            E adicionar o produto "Faded Short Sleeve T-shirts" ao carrinho
        Então proceder para o checkout

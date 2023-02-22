#language: pt
Funcionalidade: Tela de Cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto:
        Dado que eu acesse a página de cadastro no Checkout da plataforma EBAC

    Cenário: Cadastro válido
        Quando eu preencher todos os campos obrigatórios
        Então deve exibir a mensagem "Cadastro efetuado com sucesso!"
        
    Cenário: Validação dos campos
        Quando eu não preencher algum campo obrigatório
        Então deve exibir a mensagem de alerta "Todos os campos obrigatórios (*) devem ser preenchidos"

    Cenário: Validação do email
        Quando eu preencher o campo email com formato inválido
        Então deve exibir a mensagem de alerta "Email inválido"

    
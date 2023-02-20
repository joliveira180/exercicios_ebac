
Feature: Tela de Cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que eu acesse a página de cadastro no Checkout da plataforma EBAC


    Scenario Outline: Validação dos campos
        When eu informar o <nome>
        And informar o <sobrenome>
        And informar o <nomeEmpresa>
        And informar o <pais>
        And informar o <endereco>
        And informar o <complemento>
        And informar a <cidade>
        And informar o <cep>
        And informar o <telefone>
        And informar o <email>
        Then deve exibir a <mensagem>

            Exemples:
            | nome       | sobrenome   | nomeEmpresa | pais             | endereco          | complemento     | cidade            | cep         | email                       | mensagem                                                 |
            | "Aline"    | "Rocha"     |             | "Brasil"         | "Rua Alfredo, 55" | "Ap 23 Bl 1"    | "São Paulo"       | "09887-090" | "aliner@ebac.com.br"        | "Cadastro efetuado com sucesso!"                         |
            | "Beatrice" | "Portinari" |             | "Itália"         | "Florence, 1"     |                 | "Florença"        | "123456"    | "beatrice.hell@ebac.com.br" | "Cadastro efetuado com sucesso!"                         |
            | "Clare"    | "Abshire"   |             | "Estados Unidos" |                   |                 |                   | "467900"    | "clare.abshire@ebac.com.br" | "Todos os campos obrigatórios (*) devem ser preenchidos" |
            | "Duda"     | "Dursley"   |             | "Inglaterra"     | "Alfeneiros, 4"   |                 | "Little Whinging" |             | "dursley_du@ebac.com.br"    | "Todos os campos obrigatórios (*) devem ser preenchidos" |
            | "Tom"      | "Bombadil"  | Sindarin    | "Terra Média"    | "Meio do Nada, 0" | "Oeste de Bree" | "Floresta Velha"  | "9999"      | "tombombadil"               | "Formato de email inválido"                              |

        #language: pt
        Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho


            Contexto:
                Dado que eu acesse a página de produtos da EBAC


            Cenário: Limpar itens
                Quando selecionar o produto "Augusta Pullover Jacket"
                E clicar em limpar
                Então deve voltar ao estado original

            Esquema do Cenário: Adicionar vários itens
                Quando eu preencher os campos <produto>, <cor>, <tamanho>, <quantidade>
                Então deve exibir a <mensgem>

                Exemplos:
                | produto                   | cor      | tamanho | quantidade | mensagem                        |
                | "Aero Daily Fitness Tee"  | "black"  | "M"     | "3"        | "item adicionado com sucesso"   |
                | "Abominable Hoodie"       | "green"  | "L"     |            | "selecione a quantidade"        |
                | "Apollo Running Short"    |          | "36"    | "2"        | "selecione a cor"               |
                | "Caesar Warm-Up Pant"     | "black"  |         | "1"        | "selecione o tamanho"           |
                | "Augusta Pullover Jacket" | "blue"   | "L"     | "16"       | "somente 10 produtos por venda" |




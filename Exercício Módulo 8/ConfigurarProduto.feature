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

            Cenário: Configuração inválida
                Quando selecionar o produto "Augusta Pullover Jacket"
                E selecionar a cor "Orange"
                E selecionar a quantidade "2"
                Então deve exibir a mensagem de alerta "selecione o tamanho"

            Cenário: Quantidade máxima atingida
                Quando adicionar mais de 10 produtos no carrinho
                Então deve exibir a mensagem de alerta "somente 10 produtos por venda"

            Esquema do Cenário: Adicionar vários itens
                Quando selecionar o <produto>
                E selecionar a <cor>
                E selecionar o  <tamanho>
                E selecionar a <quantidade>
                Então deve exibir a <mensgem>

                Exemplos:
                | produto                   | cor      | tamanho | quantidade | mensagem                        |
                | "Aero Daily Fitness Tee"  | "black"  | "M"     | "3"        | "item adicionado com sucesso"   |
                | "Abominable Hoodie"       | "green"  | "L"     |            | "selecione a quantidade"        |
                | "Apollo Running Short"    |          | "36"    | "2"        | "selecione a cor"               |
                | "Arcadio Gym Short"       | "red"    | "34"    | "1"        | "item adicionado com sucesso"   |
                | "Caesar Warm-Up Pant"     | "black"  |         | "1"        | "selecione o tamanho"           |
                | "Caesar Warm-Up Pant"     | "grey"   | "36"    | "1"        | "item adicionado com sucesso"   |
                | "Viktor LumaTech™ Pant"   | "blue"   | "34"    | "2"        | "item adicionado com sucesso"   |
                | "Gobi HeatTec® Tee"       | "orange" | "XL"    | "5"        | "item adicionado com sucesso"   |
                | "Ingrid Running Jacket"   | "white"  | "L"     | "1"        | "item adicionado com sucesso"   |
                | "Augusta Pullover Jacket" | "blue"   | "L"     | "16"s       | "somente 10 produtos por venda" |




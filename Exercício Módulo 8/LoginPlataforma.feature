        #language: pt
        Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos


            Contexto:
                Dado que eu acesse a página de autenticação do Portal EBAC

            Cenário: Autenticação válida com usuário
                Quando inserir o usuário "joana.ebac123"
                E a senha "Ebac123456"
                Então deve seguir para a página de Checkout

            Cenário: Autenticação válida com email
                Quando inserir o usuário "joana@ebac.com.br"
                E a senha "Ebac123456"
                Então deve seguir para a página de Checkout

            Cenário: Autenticação inválida
                Quando inserir o usuário "joana.ebac123"
                E a senha "Ebacadhdhu"
                Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticação de múltiplos usuários
                Quando inserir o <usuario>
                E a <senha>
                Então deve seguir para a página de Checkout

                    Exemplos:
                    | usuario                     | senha         |
                    | "joana.ebac123"             | "Ebac123456"  |
                    | "aline@ebac.com.br"         | "aline123"    |
                    | "guilhermeroot@ebac.com.br" | "teste898*"   |
                    | "bernardo.2020"             | "bernardo.23" |
                    | "jeane.silva@ebac.com.br"   | "123hkh"      |
                    | "danilo180"                 | "batata666"   |

            
            #language:pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a Calculadora do sistema
            Para somar dois números

            Cenário: Soma de dois números
            Dado que eu acesse a Calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de dois números
            Quando eu somar o <numero1> + <numero2>
            Então deve exibir o <resultado>

            Exemplos:
            | numero1 | numero2 | resultado |
            | 1       | 2       | 3         |
            | 2       | 3       | 5         |
            | 3       | 5       | 8         |
            | 5       | 8       | 13        |
            | 8       | 13      | 21        |
            | 13      | 21      | 34        |
            | 21      | 34      | 55        |
            | 34      | 55      | 89        |
            | 55      | 89      | 144       |
            | 89      | 144     | 233       |
            | 144     | 233     | 377       |
            | 233     | 377     | 610       |
            | 377     | 610     | 987       |
            | 610     | 987     | 1597      |
            | 987     | 1597    | 2594      |
            | 1597    | 2594    | 4181      |
            | 2594    | 4181    | 6775      |
            | 4181    | 6775    | 10956     |
            | 6775    | 10956   | 17731     |
            | 10956   | 17731   | 26687     |
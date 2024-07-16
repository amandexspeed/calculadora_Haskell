No início do programa, inicio declarando as funções que seram usadas nos cálculos (hip,somatorio,produto,decideOp)<br>
Após isso começo a trabalhar as operações de IO. O primeiro passo é criar a função que vai permitir a recursividade no programa, pois, a main não pode se chamar recursivamente no Haskell.<br>
Para isso, foi criada uma função auxiliar(loopMain) que será chamada pela main e irá chamar a função que realmente tem o menu(calcPrinc) e depois ela mesmo se chama ao ser demonstrado pelo usuário o interrese na repetição do menu.<br>
O menu é constituído por duas partes: As 4 operações básicas e operações avançadas.

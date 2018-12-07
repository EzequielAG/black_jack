Feature: Juego de Black Jack

Scenario: Pagina Principal
Given abro el juego
Then debo ver "Black Jack"

Scenario: Plantarse
Given abro el juego
When me planto
Then debo ver "Resultado: "

Scenario: Vuelvo a Jugar
Given abro el juego
When me planto
And elijo volver a jugar
Then debo ver "Black Jack"

Scenario: Pido una carta y me da un siete
Given abro el juego
When pido carta y me da un 7
Then debo ver "Suma: 7"

Scenario: Pido dos cartas, me da un siete y luego un cinco 
Given abro el juego
When pido carta y me da un 7
When pido carta y me da un 5
Then debo ver "Suma: 12"

Scenario: Pido tres cartas, me da un siete, cinco y diez 
Given abro el juego
When pido carta y me da un 7
When pido carta y me da un 5
When pido carta y me da un 10
Then debo ver "PERDISTE"

Scenario: Pido dos cartas, me da un diez y un nueve y me planto
Given abro el juego
When pido carta y me da un 10
When pido carta y me da un 9
When me planto
Then debo ver "Tu puntaje: 19"

Scenario: Pido un 10, me planto y veo que la banca tiene 15
Given abro el juego
When pido carta y me da un 10
And la banca tiene 15
When me planto
Then debo ver "Puntaje banca: 15"

Feature: Juego de Black Jack

Scenario: Pagina Principal
Given abro el juego
Then debo ver "Black Jack"

Scenario: Pedir Carta
Given abro el juego
When pido carta
Then debo ver "Carta: 5"

Scenario: Plantarse
Given abro el juego
When me planto
Then debo ver "#plantado"


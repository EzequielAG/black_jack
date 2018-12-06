Feature: Juego de Black Jack

Scenario: Pagina Principal
Given abro el juego
Then debo ver "Black Jack"

Scenario: Pagina Principal
Given abro el juego
When pido carta
Then debo ver "#carta"


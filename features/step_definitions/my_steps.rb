Given(/^abro el juego$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |este_texto|
  last_response.body.should =~ /#{este_texto}/m
end

Given(/^pido carta$/) do
  @@partida.proximaCarta 5
  click_link("Pedir")
end

Given(/^me planto$/) do
  click_link("Plantarse")
end

Given(/^elijo volver a jugar$/) do
  click_link("Volver a Jugar")
end

When(/^pido carta y me da un (\d+)$/) do |carta|
  @@partida.proximaCarta carta.to_i
  click_link("Pedir")
end

When(/^la banca tiene (\d+)$/) do |puntaje|
  @@partida.forzar_puntaje_banca puntaje.to_i
end


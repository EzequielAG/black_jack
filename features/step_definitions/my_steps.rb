Given(/^abro el juego$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |este_texto|
  last_response.body.should =~ /#{este_texto}/m
end

Given(/^pido carta$/) do
  click_link("Pedir")
end

Given(/^me planto$/) do
  click_link("Plantarse")
end

Given(/^elijo volver a jugar$/) do
  click_link("Volver a Jugar")
end

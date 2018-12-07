require 'sinatra'
require "./lib/partida.rb"

get '/' do
	@@partida = Partida.new
	
	erb :inicio
end

get '/pedir' do
	@carta = @@partida.pedirCarta
	if (@carta < 0)
		erb :resultado
	else
		@carta = "Carta: #{@carta}"
		@suma = "Suma: #{@@partida.puntaje_jugador}"
		erb :inicio
	end
end

get '/plantarse' do
	erb :resultado
end

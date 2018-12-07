require 'sinatra'
require "./lib/partida.rb"
require "./lib/jugador.rb"
require "./lib/banca.rb"


get '/' do
	@@partida = Partida.new	
	@@jugador = @@partida.jugador
	
	erb :inicio
end

get '/pedir' do
	@carta = @@jugador.pedirCarta
	if (@carta < 0)
		redirect '/plantarse'
	end
	@carta = "Carta: #{@carta}"
	@suma = "Suma: #{@@jugador.puntaje}"
	erb :inicio
end

get '/plantarse' do
	erb :resultado
end

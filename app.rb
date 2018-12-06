require 'sinatra'
require "./lib/jugador.rb"
require "./lib/banca.rb"


get '/' do
	@@jugador = Jugador.new
	erb :inicio
end

get '/pedir' do
	@proximaCarta = @@jugador.proximaCarta 5
	@carta = "Carta: #{@@jugador.pedirCarta}"
	erb :inicio
end

get '/plantarse' do
	erb :resultado
end

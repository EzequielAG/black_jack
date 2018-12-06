require 'sinatra'
require "./lib/jugador.rb"
require "./lib/banca.rb"


get '/' do
	@@jugador = Jugador.new
    erb :inicio
end

get '/pedir' do
	@proximaCarta = @@jugador.proximaCarta 5
	@carta = @@jugador.pedirCarta
	"Carta: #{@carta}"
end

get '/plantarse' do
	"#plantado"
end


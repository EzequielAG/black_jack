require "./lib/jugador.rb"
require "./lib/banca.rb"
require "./lib/partida.rb"

describe "Partida de Black Jack" do

	it "puntaje inicial del jugador en cero" do
		jugador = Jugador.new
		expect(jugador.puntaje).to eq 0
	end

	it "pedir una carta" do
		jugador = Jugador.new
		jugador.proximaCarta 5
		jugador.pedirCarta
		expect(jugador.puntaje).to eq 5
	end

	it "pedir otra carta" do
		jugador = Jugador.new
		jugador.proximaCarta 5
		jugador.pedirCarta
		jugador.proximaCarta 8
		jugador.pedirCarta
		expect(jugador.puntaje).to eq 13
	end

	it "Puntaje mayor a 21" do
		partida = Partida.new
		jugador = partida.jugador
		jugador.proximaCarta 22
		jugador.pedirCarta
		expect(partida.resultado).to eq "PERDISTE"
	end

end

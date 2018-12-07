require "./lib/partida.rb"

describe "Partida de Black Jack" do

	it "puntaje inicial del jugador en cero" do
		jugador = Partida.new
		expect(jugador.puntaje_jugador).to eq 0
	end

	it "pedir una carta" do
		jugador = Partida.new
		jugador.proximaCarta 5
		jugador.pedirCarta
		expect(jugador.puntaje_jugador).to eq 5
	end

	it "recibir una carta al azar" do
		jugador = Partida.new
		jugador.pedirCarta
		expect(jugador.puntaje_jugador).to be > 0
	end

	it "pedir otra carta" do
		jugador = Partida.new
		jugador.proximaCarta 5
		jugador.pedirCarta
		jugador.proximaCarta 8
		jugador.pedirCarta
		expect(jugador.puntaje_jugador).to eq 13
	end

	it "Puntaje mayor a 21" do
		partida = Partida.new
		partida.proximaCarta 22
		partida.pedirCarta
		expect(partida.resultado).to eq "PERDISTE"
	end

	it "puntaje forzado de banca" do
		banca = Partida.new
		banca.forzar_puntaje_banca 10
		expect(banca.puntaje_banca).to eq 10
	end

end

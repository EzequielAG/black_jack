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
		partida.proximaCarta 10
		partida.pedirCarta
		partida.proximaCarta 10
		partida.pedirCarta
		partida.proximaCarta 10
		partida.pedirCarta
		expect(partida.resultado).to eq "PERDISTE"
	end

	it "puntaje forzado de banca" do
		banca = Partida.new
		banca.forzar_puntaje_banca 10
		expect(banca.puntaje_banca).to eq 10
	end

	it "la banca gana" do
		banca = Partida.new
		banca.forzar_puntaje_banca 21
		banca.resultado
		expect(banca.puntaje_banca).to eq 21
	end

	it "banca mayor a 21" do
		banca = Partida.new
		banca.forzar_puntaje_banca 22
		banca.resultado
		expect(banca.puntaje_banca).to eq 0
	end

	it "el jugador gana" do
		partida = Partida.new
		partida.forzar_puntaje_banca 22
		partida.proximaCarta 10
		partida.pedirCarta
		partida.proximaCarta 10
		partida.pedirCarta
		expect(partida.resultado).to eq "GANASTE"
	end


	it "figuras suman 10" do
		partida = Partida.new
		partida.proximaCarta 11
		partida.pedirCarta
		expect(partida.puntaje_jugador).to eq 10
	end

end

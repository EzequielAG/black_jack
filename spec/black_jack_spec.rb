require "./lib/black_jack.rb"

describe "Partida de Black Jack" do

	it "puntaje inicial del jugador en cero" do
		jugador = Jugador.new
		expect(jugador.puntaje).to eq 0
	end

end

class Jugador

	def initialize
		@puntaje = 0
		@carta = 0
		@carta_forzada = 0
	end

	def puntaje
		return @puntaje
	end

	def pedirCarta
		if @carta_forzada > 0
			@carta = @carta_forzada
			@carta_forzada = 0
		else
			@carta = Random.new.rand(1..10)
		end
		@puntaje += @carta
		if @puntaje > 21
			return -1
		else
			return @carta
		end
	end

	def proximaCarta valor
		@carta_forzada = valor
	end

end

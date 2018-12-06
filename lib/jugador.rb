class Jugador

	def initialize
		@puntaje = 0
		@carta1 = 0
	end

	def puntaje
		return @puntaje
	end

	def pedirCarta
		if @carta1 > 0
			@puntaje += @carta1
			return @carta1
		end
	end

	def proximaCarta valor
		@carta1 = valor
	end

	def plantarse
		@puntjeCasa = 21
		resultado
	end

end

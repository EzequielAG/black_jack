class Jugador

	def initialize
		@puntaje = 0
		@carta = 0
		@carta_forzada = 0
		@valor = 0
		@mazo = 0
		@cartas = [*1..52].shuffle
	end

	def puntaje
		return @puntaje
	end

	def pedirCarta
		if @carta_forzada > 0
			@carta = @carta_forzada
			@carta_forzada = 0
		else
			c = @cartas.pop
			puts "Carta: #{c}"
			@mazo = (c/13).floor
			@valor = c - (@mazo * 13)
			if @valor > 10
				@carta = 10
			else
				@carta = @valor
			end
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

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
			if @puntaje > 21
				return -1
			else
				return @carta1
			end
		end
	end

	def proximaCarta valor=nil
		if valor
			@carta1 = valor
		else
			@carta1 = Random.new.rand(1..10)
		end
	end

end

require "./lib/deck.rb"

class Partida

	def initialize
		@mazo = [*1..52].shuffle
		@valor = 0
		@palo = 0
		@carta = 0
		@carta_forzada = 0
		@carta_forzada_banca = 0
		@puntaje_jugador = 0
		@puntaje_banca = 0
		@ultima_carta = 0
	end


	def puntaje_jugador
		return @puntaje_jugador
	end


	def puntaje_banca
		return @puntaje_banca
	end

	def sacarCarta
		if @carta_forzada > 0
			@carta = @carta_forzada
			@ultima_carta = @carta
			@carta_forzada = 0
			@valor = @carta
		else
			@c = @mazo.pop
			@ultima_carta = @c
			@palo = (@c/13).floor
			@valor = @c - (@palo * 13)
			if @valor == 0
				@valor = 13
				@palo -= 1
			end
		end
		if @valor > 10
			@carta = 10
		else
			@carta = @valor
		end
		return @carta

	end

	def ultima_carta
		return @ultima_carta
	end

	def pedirCarta
		@carta = sacarCarta
		@puntaje_jugador += @carta
		if @puntaje_jugador > 21
			return -1
		else
			return @carta
		end
	end


	def logicaBanca
		while @puntaje_banca < @puntaje_jugador do
			@carta = sacarCarta
			@puntaje_banca += @carta
			if @carta_forzada_banca > 0
				@puntaje_banca = @carta_forzada_banca
			end
		end
		if @puntaje_banca > 21
			@puntaje_banca = 0
		end
	end


	def proximaCarta valor
		@carta_forzada = valor
	end

	def forzar_puntaje_banca valor
		@carta_forzada_banca = valor
		@puntaje_banca = @carta_forzada_banca
	end

	def resultado
		if @puntaje_jugador > 21
			return "PERDISTE"
		else
			logicaBanca
			if @puntaje_jugador > @puntaje_banca
				return "GANASTE"
			else
				return "PERDISTE"
			end
		end
	end

end

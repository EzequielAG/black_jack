class Banca

	def initialize
		@puntaje = 0
	end

	def puntaje valor=nil
		if valor
			return valor
		else
			return @puntaje
		end
	end

end

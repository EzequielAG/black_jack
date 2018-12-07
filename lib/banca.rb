class Banca

	def initialize
		@puntaje = Random.new.rand(13..21)
	end

	def puntaje
		return @puntaje
	end

	def forzar_puntaje valor=nil
		if valor
			@puntaje = valor
		end
	end

end

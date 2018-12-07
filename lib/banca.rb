class Banca

	def initialize
		@puntaje = Random.new.rand(13..21)
	end

	def puntaje valor=nil
		if valor
			return valor
		else
			return @puntaje
		end
	end

end

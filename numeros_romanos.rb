class NumerosRomanos

	@@simbolos = {"I" => 1,	
				  "V" => 5,
				  "X" => 10,
				  "L" => 50,
				  "C" => 100,
				  "D" => 500,
				  "M" => 1000}
		
	def self.converter(simbolo)
		somatoria = 0
		numero_anterior = 0				
		
		simbolo.each_char do |ch|
			numero = @@simbolos[ch]
						
			if numero_anterior < numero && numero_anterior != 0
				if numero_anterior * 5 == numero || numero_anterior * 10 == numero 
					somatoria += numero - (2 * numero_anterior)
				else
					raise "Valor incorreto! "
				end
			else
				somatoria += numero
			end
			
			numero_anterior = numero
		end
		
		somatoria
	end
end
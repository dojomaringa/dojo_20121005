require_relative "numeros_romanos"

describe "Numeros Romanos" do
	context "quando um caracter" do
		it "deve retornar 1 para o simbolo 'I'" do
			NumerosRomanos.converter("I").should == 1
		end
		
		it "deve retornar 5 para o simbolo 'V'" do
			NumerosRomanos.converter("V").should == 5
		end
		
		it "deve retornar 10 para o simbolo 'X'" do
			NumerosRomanos.converter("X").should == 10
		end
		
		it "deve retornar 50 para o simbolo 'L'" do
			NumerosRomanos.converter("L").should == 50
		end
	end
	
	context "quando dois caracteres" do
		it "deve retornar 2 para o simbolo 'II'" do
			NumerosRomanos.converter("II").should == 2
		end

		it "deve retornar 505 para o simbolo 'DV'" do
			NumerosRomanos.converter("DV").should == 505
		end		
	end
	
	context "quando houverem casos complexos" do
		it "deve retornar 9 para o simbolo 'IX'" do
			NumerosRomanos.converter("IX").should == 9
		end
		
		it "deve retornar 14 para o simbolo 'XIV'" do
			NumerosRomanos.converter("XIV").should == 14
		end
		
		it "deve retornar 90 para o simbolo 'XC'" do
			NumerosRomanos.converter("XC").should == 90
		end
		
		it "deve retornar 99 para o simbolo 'XCIX'" do
			NumerosRomanos.converter("XCIX").should == 99
		end

		it "deve retornar 1999 para o simbolo 'MCMXCIX'" do
			NumerosRomanos.converter("MCMXCIX").should == 1999
		end

		it "deve retornar 1013 para o simbolo 'MXIII'" do
			NumerosRomanos.converter("MXIII").should == 1013
		end
	end
	
	context "quando houverem excessoes (valores incorretos)" do
		it "deve retornar uma excessao para o simbolo 'IC'" do
			expect {NumerosRomanos.converter("IC")}.to raise_error
		end
		it "deve retornar uma excessao para o simbolo 'IL'" do
			expect {NumerosRomanos.converter("IL")}.to raise_error
		end
		it "deve retornar uma excessao para o simbolo 'XM'" do
			expect {NumerosRomanos.converter("XM")}.to raise_error
		end
	end
end
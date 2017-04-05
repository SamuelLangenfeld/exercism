module BookKeeping
	VERSION=4
end

class Complement

	def Complement.of_dna(dna)
		rna=""
		dna.each_char do |c|
			if c=="G"
				rna+="C"
			elsif c=="C"
				rna+="G"
			elsif c=="T"
				rna+="A"
			elsif c=="A"
				rna+="U"
			else
				return ""
			end
		end

		return rna
				
				

	end


end
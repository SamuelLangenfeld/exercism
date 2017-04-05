class Pangram
	def Pangram.pangram?(phrase)
		alphabet=('a'..'z')
		phrase.downcase!
		alphabet.each do |char|
			unless phrase.include? char
				return false
			end
		end
		return true
	end
end


module BookKeeping
	VERSION=4
end
module BookKeeping
	VERSION=3
end

class Hamming

	def Hamming.compute(string1, string2)
		unless string1.size==string2.size
			raise ArgumentError.new("The strands do not have identical length")
		end

		count=0

		string1.size.times do |i|
			unless string1[i]==string2[i]
				count+=1
			end
		end

		return count

	end



end
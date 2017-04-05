module BookKeeping
	VERSION=3
end

class Raindrops

	def Raindrops.convert(number)
		string=""
		if number%3==0
			string+="Pling"
		end
		if number%5==0
			string+="Plang"
		end
		if number%7==0
			string+="Plong"
		end
		if string==""
			string=number.to_s
		end
		return string
	end

end
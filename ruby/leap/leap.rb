class Year
	def Year.leap?(num)

		if num%4==0
			if num%100==0
				if num%400==0
					return true
				end
				return false
			end
			return true
		end
		return false

				
				
	end
end

module BookKeeping
	VERSION=2
end
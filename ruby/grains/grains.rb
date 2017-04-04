class Grains
	def Grains.square(num)
		if num<1 || num >64
			raise ArgumentError.new("You must pick a number between 1 and 64")
		end
		return 2**(num-1)
	end

	def Grains.total
		sum=0
		num=1
		while num<65
			sum+=2**(num-1)
			num+=1
		end
		return sum
	end

end

module BookKeeping
	VERSION=1
end
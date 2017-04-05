module BookKeeping
	VERSION=3
end

class Squares
	def initialize(num)
		@num=num
	end

	def square_of_sum
		num=@num
		sum=0
		until num<=0
			sum+=num
			num-=1
		end
		square=sum*sum
		return square
	end

	def sum_of_squares
		num=@num
		sum=0
		until num<=0
			square=num*num
			sum+=square
			num-=1
		end
		return sum
	end

	def difference
		return square_of_sum-sum_of_squares
	end
end
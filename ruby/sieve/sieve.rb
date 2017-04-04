class Sieve
	def initialize(num)
		if num>=2
		  @range=(2..num).to_a
		end
	end

	def primes
		primes=[]

		if @range
			
			indx=2

			leave_out=[]


			until indx>@range.last
				@range.each do |i|
					if (i%indx)==0
						unless i==indx
						  unless leave_out.include? i
						    leave_out.push(i)
						  end
						end
					end
				end
				indx+=1
			end


			@range.each do |i|
				unless leave_out.include? i
					primes.push(i)
				end
			end

			
		end
		return primes
	end
end

module BookKeeping
	VERSION=1
end
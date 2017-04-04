class Prime
	attr_accessor :list_of_primes

	def Prime.nth(num)
		num=num.to_i
		if num<1
			raise ArgumentError.new("need to specify an nth of 1 or more")
		end
		@@list_of_primes ||= Prime.make_prime_list
		return @@list_of_primes[num-1]



	end


	def Prime.make_prime_list
		range=[2,3]
		num=5
		while num<105000
			range.push(num)
			num+=2
		end

		divisor=2
		indx=0
		size=range.size
		divisor_indx=0
		max_divisor=Math.sqrt(105000)

		until divisor>max_divisor
			until indx>size-1
			  if range[indx]>divisor && range[indx]%divisor==0		  	  
				  range.delete_at(indx)
				  size-=1
			  else
			    indx+=1
			  end

			end
			divisor_indx+=1
			indx=0
			divisor=range[divisor_indx]
			until range[indx]>divisor
				indx+=1
			end
		end


		return range

	end

end

module BookKeeping
	VERSION=1
end
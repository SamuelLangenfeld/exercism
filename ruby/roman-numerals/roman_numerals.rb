class Integer
	def to_roman

		def generate_numerals(num)
			numerals_array=[]
			if num>100
				numerals_array=["C","D","M"]
			elsif num>10
				numerals_array=["X","L","C"]
			elsif num>0
				numerals_array=["I","V","X"]
			end
			return numerals_array
		end

		def generate_string(num, numerals_array)
			string=""
			if num>0 && num<10
				if num<4
					while num>0
					  string+=numerals_array[0].to_s
					  num-=1
					end
				elsif num>3 and num<9
					if num>=5
						string+=numerals_array[1].to_s
						num-=5
						while num>0
							string+=numerals_array[0].to_s
							num-=1
						end
					else
						num=5-num
						while num>0
							string+=numerals_array[0].to_s
							num-=1
						end
						string+=numerals_array[1].to_s
					end
				else
					string+=numerals_array[0].to_s
					string+=numerals_array[2].to_s
				end
			end
			return string
		end

		int=self

		roman=""
		while int/1000>0
			roman+="M"
			int-=1000
		end

		hundreds_numerals=generate_numerals(int)

		hundreds=int/100.to_i
		roman+=generate_string(hundreds, hundreds_numerals)


		while int>=100
			int-=100
		end

		tens_numerals=generate_numerals(int)

		tens=int/10.to_i
		roman+=generate_string(tens, tens_numerals)

		

		while int>10
			int-=10
		end

		ones_numerals=generate_numerals(int)

		ones=int
		roman+=generate_string(ones, ones_numerals)
				


		return roman

				
	end

end

module BookKeeping
	VERSION=2
end
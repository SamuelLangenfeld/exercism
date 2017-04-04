class Robot
	attr_accessor :name
	attr_accessor :list_of_names

	@@list_of_names=[]

	def initialize
		generate_name		
	end

	def generate_name
		possible_name=generate_possible_name
		until !@@list_of_names.include?(possible_name)
			possible_name=generate_possible_name		
		end
		@name=possible_name
		@@list_of_names.push(@name)

	end

	def generate_possible_name
		rand_num=rand(10).to_i.to_s
		rand_letter=('A'..'Z').to_a[rand(26).to_i].to_s
		possible_name=""+rand_letter+rand_letter+rand_num+rand_num+rand_num
		return possible_name
	end

	def reset
		@@list_of_names.delete(@name)
		generate_name
	end
end

module BookKeeping
	VERSION=2
end

# The actual inject method

# [1, 2, 3, 4].inject() { |result, element| result + element }
# or [1, 2, 3, 4].inject(:+)
# => 10 

# [1, 2, 3, 4].inject(2) { |result, element| result + element }
# or [1, 2, 3, 4].inject(2, :+)
# => 12 

class Array 

	def iterator_inject(accumulator)
		accumulator = self.first #Same as self[0]
		puts "accumulator before iteration run = #{accumulator}"
		self[1..-1].each do |element|
			puts "accumulator = #{accumulator}"
			puts "element = #{element}"
			accumulator = yield(accumulator, element)
			puts "accumulator after block run = #{accumulator}"
			puts "------"
		end
		
	end
end




#else

			#if accumulator.nil?


			#self[0..-1].each do |element|
			#	accumulator = yield(accumulator, element)
			#end
		
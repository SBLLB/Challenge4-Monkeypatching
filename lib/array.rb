#! /usr/bin/env ruby

class Array
	def iterator_inject(accumulator = nil, symbol = nil)
		 if accumulator.is_a?(Symbol) && symbol == nil 
			total = self.first
			self[1..-1].each do |element|
			total = total.send(accumulator, element)
			end
			return total
		elsif
			symbol == nil && accumulator.nil?
			accumulator = self.first
			self[1..-1].each do |element|
				accumulator = yield(accumulator, element)
			end
			return accumulator
		elsif 
			symbol == nil && !accumulator.nil?
			self[0..-1].each do |element|
				puts "here's the problem #{accumulator}"
				accumulator = yield(accumulator, element)
			end	
			return accumulator
		else
			self[0..-1].each do |element|
				accumulator = accumulator.send(symbol, element)
			end
			return accumulator
		end
		
	end
end

# p [1,2,3,4].iterator_inject {|element, item| element + item }

	# def iterator_sum
	# 	sum  = 0 
	# 	self.each {|n| sum += n}
	# 	return sum
	# end

	# def recursive_sum
	# 	return 0 unless self.length > 0
	# 	self.shift + self.recursive_inject
	# end

# p [1, 2, 3, 4].iterator_inject

# p [1, 2, 3, 4].recursive_inject

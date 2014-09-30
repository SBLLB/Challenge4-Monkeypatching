#! /usr/bin/env ruby

class Array


	def iterator_inject(accumulator = nil, symbol = nil)
		if symbol.is_a?(Symbol) && accumulator.nil?
			accumulator = self.first
			self[1..-1].each do |element|
			accumulator = accumulator.send(symbol, element)
			end
		elsif
			symbol == nil && accumulator.nil?
			accumulator = self.first
			self[1..-1].each do |element|
				accumulator = yield(accumulator, element)
			end
		elsif 
			symbol == nil && !accumulator.nil?
			self[0..-1].each do |element|
				accumulator = yield(accumulator, element)
			end	
		else
			symbol.is_a?(Symbol) && !accumulator.nil?
			self[0..-1].each do |element|
				accumulator = accumulator.send(symbol, element)
		end
			
		return accumulator
	end
end

# p [1,2,3,4].iterator_inject(2) {|element, item| element + item }

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

#! /usr/bin/env ruby

class Array
	def iterator_inject(accumulator = nil, symbol = nil)
		copy = self.dup

		 if accumulator.is_a?(Symbol) && !symbol
			total = copy.shift
			copy.each do |element|
			total = total.send(accumulator, element)
			end
			return total
		end
		if
			!symbol && !accumulator
			accumulator = copy.shift
			copy.each do |element|
				accumulator = yield(accumulator, element)
			end
			return accumulator
		end
		if
			!symbol && accumulator
			copy.each do |element|
				accumulator = yield(accumulator, element)
			end	
			return accumulator
		end	
		copy.each do |element|
			accumulator = accumulator.send(symbol, element)
		end
		return accumulator	
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

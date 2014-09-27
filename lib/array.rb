#! /usr/bin/env ruby

class Array

	def iterator_inject
		sum  = 0 
		self.each {|n| sum += n}
		return sum
	end

	def recursive_inject
		return 0 unless self.length > 0
		self.shift + self.recursive_inject
	end

	def fake_inject(accumulator = self.first)
		if accumulator = self.first
			self[1..-1].each do |item|
				accumulator = yield(accumulator, item)
			end
		else
			self[0..-1].each do |item|
				accumulator = yield(accumulator, item)
			end
		end
		return accumulator
	end

end

# p [1, 2, 3, 4].iterator_inject

# p [1, 2, 3, 4].recursive_inject

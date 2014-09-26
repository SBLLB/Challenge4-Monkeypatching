#! /usr/bin/env ruby

class Array

#Use Alias?
	def iterator_inject
		sum  = 0 
		self.each {|n| sum += n}
		return sum
	end

end

p [1, 2, 3, 4].fake_inject



require 'array'

describe Array do 

	 it 'should return the sum of numbers in an array using an iterator' do 
	 	expect([1, 2, 3, 4].iterator_inject).to eq(10)
	 end
 	
 # 	it 'should return the sum of numbers in an array using recursion' do 
	#  	expect([1, 2, 3, 4].fake_inject).to eq(10)
	# end
end


#[1, 2, 3, 4].inject { |result, element| result + element }
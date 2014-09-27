require 'array'

describe Array do 

	arr = [1, 2, 3, 4]

	context 'The replacement inject method should' do 


		context 'should return the sum of numbers in an array ' do 

			 it 'using an iterator' do 
			 	expect(arr.iterator_inject() ).to eq(10)
			 end
		 	
		 	it 'using recursion' do 
			 	expect(arr.recursive_inject).to eq 10 
			end
		end

		context 'should return the results of a block passed' do 
			
			it 'with an enumerator passed as an argument' do 
				expect([1,2,3,4].fake_inject(0) {|accumulator, item| accumulator + item }).to eq(10)
			end

			it 'and set the enumerator to the first array object if none passed' do 
				expect([1,2,3,4].fake_inject { |accumulator, item| accumulator + item }).to eq(10)
			end

		end 
	end
end


# [1, 2, 3, 4].inject() { |result, element| result * element }


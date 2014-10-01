require 'array'

describe Array do 

	context 'The replacement inject method should' do 

		arr = [1, 2, 3, 4]

		context 'return the results of a block' do 
			
			it 'when an enumerator is passed as an argument' do 
				expect(arr.iterator_inject(0) {|accumulator, element| accumulator + element }).to eq(10)
			end

			it 'when no enumerator is passed, defaulting to the first array element' do 
				expect(arr.iterator_inject { |accumulator, element| accumulator + element }).to eq(10)
			end
		end 

		context 'successfully calculate when a block is passed' do 
			it 'the sum of all elements in an array' do 
				expect(arr.iterator_inject { |accumulator, element| accumulator + element }).to eq(arr.inject { |accumulator, element| accumulator + element })
			end 

			it 'the multiplication of all elements in an array' do 
				expect(arr.iterator_inject { |accumulator, element| accumulator * element }).to eq(arr.inject { |accumulator, element| accumulator * element })
			end 
		end

		context 'succesfully calculate when a symbol is passed ' do 
			it 'on its own, without an enumerator' do 
				expect(arr.iterator_inject(:+)).to eq(arr.inject(:+))
			end
			
			it 'with an enumerator present too' do 
				expect(arr.iterator_inject(2, :+)).to eq(arr.inject(2, :+))
			end

		end
	end
end


# [1, 2, 3, 4].inject() { |result, element| result * element }


class Array
	def new_inject_method(arg = nil)
		arr = self.dup
	
		accumulator= arg.nil? first : arg

			accumulator = first_element
			arr.each do |element|
				accumulator = yield(accumulator, element)
			end
		
		accumulator
	end
end

arr = [1,2,3,4]

expect(arr.new_inject_method(10, :+)).to eq(arr.inject(10, &:+))

p [{a:1}, {b:2}, {c:3}].inject(&:merge)
require 'my_inject'

describe Array do
	
	it 'receives an array' do
		my_array=Array.new
		my_array=[1,2,3,4]
		expect(my_array.my_inject{|acc, number| acc + number}).to be 10
	end

	it 'works with strings' do
		list = %w{ dog elephant horse }
		expect(list.my_inject{|acc, word| acc.length > word.length ? acc : word}).to eq 'elephant'
	end

end
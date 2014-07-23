class Array
	
	def my_inject(argument=nil)
			!argument.nil? ? self.unshift(argument) : self
			memory = self.first		
			array = self.drop(1).map {|element| memory = yield [memory,element]}
			array.last
	end

end

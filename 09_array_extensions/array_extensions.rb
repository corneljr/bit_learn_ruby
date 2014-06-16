class Array

	def sum
		self.inject(0) {|sum, each| sum + each}
	end

	def square
		self.map { |each| each ** 2 }
	end

	def square!
		self.map! { |each| each ** 2 }
	end

end

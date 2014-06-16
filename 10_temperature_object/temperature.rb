class Temperature

	def initialize(hash)
		@hash = hash
	end

	def self.in_celsius(temp)
		Temperature.new({:c => temp})
	end

	def self.in_fahrenheit(temp)
		Temperature.new({:f => temp})
	end

	def to_celsius
		@hash.each do |key,value|
			if key == :c
				return value
			else
				return (5.0 / 9)*(value - 32)
			end
		end
	end

	def to_fahrenheit
		@hash.each do |key, value|
			if key == :f
				return value
			else
				return (9.0 / 5) * value + 32
			end
		end
	end
end

class Celsius < Temperature
	def initialize(temp)
		@hash = {:c => temp}
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@hash = {:f => temp}
	end
end
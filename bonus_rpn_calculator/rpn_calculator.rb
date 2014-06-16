class RPNCalculator
	attr_reader :value

	TOKENS = ['*','+','-','/']

	def initialize
		@arr = []
		@value = 0
	end

	def push(num)
		@arr << num
	end

	def plus
		check
		@value += @arr.pop(2).inject(:+)
	end

	def minus
		check
		@value -= @arr.pop(2).reverse.inject(:-)
	end

	def divide
		check
		@value += @arr.pop(2).reverse.inject {|sum,each| each.to_f / sum}  
	end

	def times
		check
		@value = 1 if @value == 0
		@value *= @arr.pop(2).inject(1) {|sum,each| sum * each.to_f}
	end

	def check
		raise 'calculator is empty' if @arr.empty?
	end

	def tokens(str)
		arr = []
		str.split.each do |token|
			arr << token.to_i unless TOKENS.include?(token)
			arr << token.to_sym if TOKENS.include?(token)
		end
		arr
	end

	# def evaluate(str)
	# 	token_arr = []
	# 	atr.split.each do |token|
	# 		token_arr << token if TOKEN.include?(token)
	# 		@arr << token unless TOKEN.include?(token)

	# 	token_arr.each do |token|
	# 		@value = 


end

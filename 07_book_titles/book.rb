class Book
		attr_accessor :title

		EXCEPTIONS = ['and', 'in', 'the', 'over','to','a','of','an']

	def initialize(book = "")
		@title = book
	end

	def title
		@title.capitalize!.split.each {|word| word.capitalize! unless EXCEPTIONS.include?(word) }.join(' ')
	end

end
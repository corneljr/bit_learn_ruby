class Dictionary
	attr_reader :entries

	def initialize()
		@entries = Hash.new
		@keyword = ""
	end

	def add(arg)
		if arg.is_a?(Hash)
			@entries = @entries.merge(arg)
		else
			@entries[arg] = nil
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(word)
		@entries.keys.include?(word)
	end

	def find(word)
		@entries.select {|each| each =~ /#{word}/ }
	end

end
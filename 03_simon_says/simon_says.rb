def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times = 2)
	arr = []
	times.times do 
		arr << word
	end
	arr.join(' ')
end

def start_of_word(word,num)
	word.split('')[0..(num - 1)].join
end

def first_word(word)
	word.split.first
end

def titleize(word)
	exceptions = ['and', 'over', 'the']
	word.capitalize!.split(/\W/).each {|word| word.capitalize! unless exceptions.include?(word)}.join(' ')
end

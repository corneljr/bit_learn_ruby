VOWELS = %w[a e i o u y]

def translate(word)
	word = word.split('')

	if VOWELS.include?(word.first)
	elsif VOWELS.include?(word[1])
		word << word.shift
	elsif VOWELS.include?(word[2])
		word << word.shift(2)
	end
	word.join('') + 'ay'
end
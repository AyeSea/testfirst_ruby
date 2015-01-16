def translate(str)
	vowels = %w{a e i o u}
	words = str.split(" ")
	
	converted_words = []

	words.each do |word|
		cap = "yes" if word == word.capitalize

		word = word.downcase.split("")

		until vowels.include?(word[0])
			if word[0] == 'q' && word[1] == 'u'
				2.times{word << word.shift}
			else
				word << word.shift
			end
		end

		word = word.join("") + "ay"
		word.capitalize! if cap == "yes"
		converted_words << word
	end

	converted_words.join(" ")
end

def echo(str)
	str
end


def shout(str)
	str.upcase
end


def repeat(str, times=2)
	"#{str} " * (times - 1) + str
end


def start_of_word(str, num_chars)
	str.slice(0, num_chars)
end


def first_word(phrase)
	phrase = phrase.split(" ")
	phrase[0]
end


def titleize(phrase)
	phrase = phrase.split(" ")
	phrase.map!{|word| word.capitalize}

	#List of little words kept short for the purposes of this exercise.
	little_words = %w{And Over The}

	new_phrase = []

	phrase.each_index do |index|
		if index == 0
			new_phrase << phrase[index]
			next
		end

		if little_words.include?(phrase[index])
			new_phrase << phrase[index].downcase
		else
			new_phrase << phrase[index]
		end
	end

	new_phrase.join(" ")
end
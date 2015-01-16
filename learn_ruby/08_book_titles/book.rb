class Book
	attr_accessor :title

	def title
		words = @title.split(" ")
		no_caps = %w{the a an and in of}
		fixed_title = []

		words.each_with_index do |word, index|
			if index == 0 || no_caps.include?(word) == false
				fixed_title << word.capitalize
			else
				fixed_title << word
			end
		end

		@title = fixed_title.join(" ")
	end
end
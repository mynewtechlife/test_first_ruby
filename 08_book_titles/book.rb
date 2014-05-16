class Book

	attr_reader :title

	def title=(title_string)
		title_array = []
		non_cap_words = ["in", "of", "the", "a", "an", "and"]
		words_array = title_string.downcase.split(" ")
		words_array.each do |word|
			if non_cap_words.include? word.to_s
				title_array << word
			else
				title_array << word.to_s.capitalize
			end
		end
		title_array[0].capitalize!
		@title = title_array.join(" ")
	end
end

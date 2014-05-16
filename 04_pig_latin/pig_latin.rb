
#All but the last bonus test works. Hardest exercise.
def translate(string_to_translate)
	vowels_array = %w[a e i o u]
	consonants_array = ("a".."z").to_a - vowels_array
	translated_array = []
	array_to_translate = string_to_translate.split(" ")
	array_to_translate.each do |untranslated_word|
		#if (vowels_array.include? untranslated_word[-1]) && (consonants_array.include? untranslated_word[-1])
		#	puctuation = untranslated_word.last
		#	untranslated_word.chop!
		if untranslated_word[0].upcase == untranslated_word[0]  
			capitalized = true
		end
		untranslated_word = untranslated_word.downcase
		translated_word = untranslated_word.downcase
		i = 0
		
		while i <= untranslated_word.length do
			if consonants_array.include? untranslated_word[i]
				translated_word = untranslated_word[(i + 1)..-1] + untranslated_word[0..i]
				i += 1
			elsif untranslated_word[i] == "u" && translated_word.split("").last == "q" 
				translated_word = untranslated_word[(i + 1)..-1] + untranslated_word[0..i]
			elsif vowels_array.include? untranslated_word[i]
				translated_word = translated_word + "ay"
				break
			else
				translated_word = untranslated_word[(i + 1)..-1] + "ay" + untranslated_word[i]
				i += 1
			end
		end

	capitalized ? translated_array << translated_word.capitalize : translated_array << translated_word.downcase
	end
	translated_array.join(" ")

end

puts translate("I want cookies! Give me cookies.")

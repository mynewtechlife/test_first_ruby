def echo(e)
	e
end

def shout(s)
	s.upcase
end

def repeat(r, t=2)
	[r] * t * " "
end


def start_of_word(s, l)
	s.slice(0...l)
end

def first_word(s)
	s.scan(/\S+/)[0]
end

# If "little words" means certain words and length
def titleize(s)
	words_array = []
	little_words = ["over", "under", "below", "etc"]
		s.split.each do |w| 
			if w.length > 3 && !(little_words.include? w)
				words_array << w.capitalize
			else
				words_array << w.downcase 
			end
		end
			words_array[0].capitalize!
			words_array.join(" ")
end

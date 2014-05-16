class Dictionary
	attr_accessor :entries

	def initialize
		@entries = {}
	end

	

	def add(key_to_add)
	if key_to_add.is_a?(Hash) 
		key_to_add.each { |keyword, title| @entries[keyword] = title}
		else
		@entries[key_to_add] = nil
	end

	end

	def keywords
		@entries.keys.sort
	end

	def include?(keyword)
		@entries.has_key?(keyword)
	end

	def find(key_to_find)
		@entries.select { |keyword, title| keyword =~  /^#{key_to_find}/ }
	end

	def printable
		printable_array = []
		@entries.each { |keyword, title| printable_array << "[#{keyword}] \"#{title}\"" }
		printable_array.sort.join("\n")
	end



end

@test = Dictionary.new
puts @test.find('nothing')
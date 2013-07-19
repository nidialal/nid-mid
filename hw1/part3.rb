def sort_word(word)
	return word.chars.sort { |a, b| a.casecmp(b) } .join.downcase
end

def combine_anagrams(words)
	list={}
	words.each do |word|
	 s_word=sort_word(word)
	 if(list.has_key?(s_word))
	  list[s_word]=[list[s_word],word].flatten
	 else
	  list[s_word]=[word]
	 end
	end
	return list.values
end
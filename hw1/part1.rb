#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  # YOUR CODE HERE
  str1=str.downcase.gsub(/[^a-z]/i,'')
  str1==str1.reverse
  end

def count_words(str)
  arr=str.downcase.split(%r{\b})
  arr.delete_if{|word| word==" "}
  word_count={}
  arr.each do|word|
	if(word_count[word]==nil)
	 word_count[word]=1
	else
	 word_count[word]=word_count[word]+1
	end
  end
  return word_count
end

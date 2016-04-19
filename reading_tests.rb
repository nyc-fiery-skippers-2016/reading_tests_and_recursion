
def word_count(string)
  string.split.length
end

def average_word_length(string) #to work on strings with punctuation as well
  if string == ""
    return nil
  else
    string_arr_length = string.split.length
    words_no_punctuation = string.gsub(/\W/, "")
    words_no_punctuation.length.fdiv(string_arr_length)
  end
end

def palindrome?(string)
  return true if string == string.reverse
  false
end


def vowels(string)
  vowels = []
  string.split.each do |word|
   if word.include?(/[aeiou]/)
    vowels << word
  end
  end
  p vowels.flatten

  end



 str = "24 hour roadside resistance"
 p vowels(str)

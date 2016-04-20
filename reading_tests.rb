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
  string.split.select! {|word| word =~ /[aeiou]/}
end

def start_with_c?(string)
  string.split.all? { |word| word[0] == "c" }
end

def titlecase(string)
  string.split.map{ |word| word.capitalize }.join(" ")
end

def delete_last(string, n)
  string.slice!(-n..-1)
  return string
end

def to_money(float)
  "$" + ('%.2f' % float) #check this
end

def numeric?(elm)
  return true if elm.is_a? Numeric
  false
end

def mean(array)
  array.reduce(:+).fdiv(array.length)
end

def super_compact(array)
  array.delete_if do |elm|
    elm.nil? == true || elm.empty? == true
  end
end

def mode(array)
  











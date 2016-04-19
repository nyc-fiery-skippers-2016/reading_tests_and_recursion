def word_count(string)
  array = string.split(" ")
  if array.empty?
    return 0
  else
    return array.length
  end
end

def average_word_length(string)
  word = string.split(" ")
  return nil if word.empty?
  sum_of_letters = word.inject{|sum, word| sum += word.length}
  sum_of_letters/word.length
end

def palindrome?(string)
  string == string.reverse
end

def vowels(string)
  vowels = "aeiou"
  words = string.split(" ")
  new_words = []
  words.each do |word|
    new_words << word if vowels.include?(word)
  end
  new_words
end

def start_with_c?(string)
  words = string.split(" ")
  words.all?{|word| word.start_with?("C").downcase}
end

def titlecase(string)
  words = string.split(" ")
  words.each do |word|
    word.capitalize!
  end
  words
end

def delete_last(string, idx)
  string.delete!(string[-idx..-1])
  string
end

def to_money(float)
  "$" + float.to_s #and round down
end

def numeric?(string)
  string.to_f.is_a? Float
end

def mean(num_array)
  num_array.inject{&:+}/num_array.length
end

def super_compact(array)
  array.delete_if{|elm| elm.empty? || elm == nil}
end

def mode(array)
  most_common = array[0]
  array.each do |elm|
    most_common = elm if elm.count > most_common.count
  end
  most_common
end

def symbolize(array)
  array.each do |elm|
    elm.to_sym
  end
  array
end

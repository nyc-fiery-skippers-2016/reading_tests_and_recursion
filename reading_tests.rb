def word_count(string)
  array = string.split(" ")
  array.length
end

def average_word_length(string)
  words = string.split(" ")
  length_array = []
  return nil if words.empty?
  word.each{|word| length_array << word.length}
  length_array.inject(&:+)/words.length
end

def palindrome?(string)
  string == string.reverse
end

# def vowels(string)
#   vowels = "aeiou"
#   words = string.split(" ")
#   new_words = []
#   words.each do |word|
#     new_words << word if vowels.include?(word)
#   end
#   new_words
# end

def start_with_c?(string)
  words = string.downcase.split(" ")
  words.all?{|word| word.start_with?("c")}
end

def titlecase(string)
  words = string.split(" ")
  words.each do |word|
    word.capitalize!
  end
  words.join(" ")
end

def delete_last(string, idx)
  string.delete!(string[-idx..-1])
  string
end

def to_money(float)
  "$" + float.round(2).to_s
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

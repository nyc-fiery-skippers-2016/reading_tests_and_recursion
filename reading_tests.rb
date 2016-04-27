def word_count(string)
  string.split.length
end

def average_word_length(string)
  sum = 0
  if string != ""
    string.split.each do |word|
      sum += word.size
    end
    average = sum.fdiv(string.split.length)
  else
    nil
  end
end

def palindrome?(string)
  string == string.reverse ? true : false
end

def vowels(string)
 vowels = ["a","e","i","o","u"]
 words_with_vowels = []
 string.split.each do |word|
  vowels.each do |vowel|
  words_with_vowels << word if word.include?(vowel)
  end
end
words_with_vowels.uniq
end

def start_with_c?(string)
  string.split.all? {|word| word[0] == "c"}
end

def titlecase(string)
  split_string = string.split.map! {|word| word.capitalize}
  split_string.join(" ")
end

def delete_last(string, n)
  string.slice!(0...-n)
end

def to_money(float)
  float.round == float  ?
  "$#{float.round(2)}0" :
  "$#{float.round(2)}"
end

def numeric?(string)
  string.to_f != 0 ? true : false
end

def mean(num_arr)
  (num_arr.reduce(:+)/num_arr.length.to_f)
end

def super_compact(arr)
  arr.delete_if{|elm| elm == nil || elm == "" || elm == []}
  arr
end

def mode(arr)
  hash = {}
  arr.each do |elm|
    hash[elm] ? hash[elm] += 1 : hash[elm] = 1
  end
  value = hash.values.sort { |a,b| b <=> a }.first
  hash.key(value)
end


def symbolize(str_arr)
  str_arr.map! {|elm| elm.to_sym}
end
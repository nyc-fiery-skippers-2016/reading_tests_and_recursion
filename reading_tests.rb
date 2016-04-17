def word_count(string)
  string.split.length
end

def average_word_length(string)
  return nil if string == ""
  word_length = string.split.map {|word| word.length.to_f}
  word_length.reduce(:+) / word_count(string)
end

def palindrome?(string)
  string == string.reverse ? true : false
end

def vowels(string)
  words = string.split
  words.select do |word|
    word if word =~ /[aeiou]/
  end
end

def start_with_c?(string)
 string.split.all? {|word| word =~ /\A[c]/}
end

def titlecase(string)
  words = string.split.map do |word|
    word[0].upcase + word[1..-1]
  end
  words.join(" ")
end

def delete_last(string, n)
  string.slice!(-n..-1)
  string
end

def to_money(numbers)
  "$#{'%.2f' % numbers.round(2)}"
end

def numeric?(string)
  true if Integer(string) rescue false
end

def mean(array)
  array.reduce(:+).to_f / array.length
end

def super_compact(array)
  array - ["",nil,[]]
end

def mode(array)
  hash = Hash.new(0)
  array.each{ |key| hash[key] += 1}
  hash.key(hash.values.max)
end

def symbolize(array)
  array.map {|elm| elm.to_sym}
end

p mode(%w|a b dog a b b|)
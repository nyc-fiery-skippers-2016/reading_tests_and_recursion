def word_count(string)
  num_words = string.split(" ").length
  return num_words
end

def average_word_length(sentence)

num_words = (sentence.split).length
if num_words > 0
  word_lengths = sentence.split.map {|word| word.length}
  return (word_lengths.reduce(:+)).to_f / (num_words).to_f
else
  return nil
end
end

def palindrome?(word)
if word == word.reverse
  return true
else
  return false
end
end

def vowels(sentence)
   vowels = []
sentence.split(' ').select {|word| word if word.include?("a") || word.include?("e") || word.include?("i") || word.include?("o") || word.include?("u") }
end


def start_with_c?(str)
  str.split(' ').all? {|word| word.start_with?("c")}
end

def titlecase(str)
  cap = str.split(' ').map {|word| word.capitalize}
  cap.join(' ')
end

def delete_last(str, n)

letters = str.split("")
letters.replace([letters[0..-n-1]]).join('')


end
delete_last("blah",1)

def to_money(num)
  num = "%.2f" % num
  return "$#{num}"
end

def numeric?(num)
  if num.is_a?(String)
    return false
  else return true
  end
end

def mean(arr)
  mean = arr.reduce(:+).to_f / (arr.length).to_f
  return mean
end

def super_compact(arr)
arr.compact.reject{|elm| elm.empty?}
end

def mode(arr)
  p arr.max_by{|elm| arr.count(elm)}
end

def symbolize(arr)
  arr.map do |elm|
    elm.to_sym
  end
end
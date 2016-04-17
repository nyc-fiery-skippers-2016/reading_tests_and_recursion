def word_count(string)
  string.split.length
end

def average_word_length(string)
  return nil if string.empty?
  words_lengths = string.split.map{|word| word.length.to_f}
  words_lengths.inject(:+) / words_lengths.length
end

def palindrome?(string)
  string == string.reverse
end

def vowels(string)
  string.split.map{|word| word if word.match(/[aeiou]/)}.compact
end

def start_with_c?(string)
  string.split.all?{|word| word.start_with?("c")}
end

def titlecase(string)
  string.split.map(&:capitalize).join(" ")
end

def delete_last(string, to_delete)
  string.replace(string[0..-(to_delete + 1)])
end

def to_money(float)
  "$#{"%.2f" % float}"
end

def numeric?(item)
  item.is_a?(Numeric) || !item.match(/\d/).nil?
end

def mean(array)
  array.inject(:+).to_f / array.length
end

def super_compact(array)
  array.map{|el| el unless (el.nil? || el.empty?)}.compact
end

def mode(array)
  array.group_by(&:itself).values.sort_by(&:length).last.last
end

def symbolize(array)
  array.map{|el| el.to_sym}
end

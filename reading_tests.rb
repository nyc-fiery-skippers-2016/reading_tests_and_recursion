def word_count(string)
  return string.split(" ").length
end

def average_word_length(string)
  return nil if string.length < 1
  string_array = string.split(" ")
  length_array = string_array.map {|word| word.length}
  length_array.inject(0) {|sum, num| sum += num}.fdiv(length_array.length)
end

def palindrome?(string)
  string == string.reverse
end

def vowels(string)
  return string.split(" ").select {|word| word.match(/[aeiou]/)}
end

def start_with_c?(string)
  string.split(" ").all? {|word| word[0] == "c"}
end

def titlecase(string)
  string_array = string.split(" ")
  return string_array.map {|word| word.capitalize}.join(" ")
end

def delete_last(string, num)
  string.delete! "string[-num..-1]"

end

def to_money(num)
  return "$" +'%.2f' % num
end

def numeric?(item)
  item.to_f == 0.0 ? false : true
end

def mean(arr)
  return arr.inject(0) {|sum, item| sum+=item}.fdiv(arr.length)
end

def super_compact(arr)
  arr.compact.delete_if {|item| item == [] || item == ""}
end

def mode(arr)
  arr.sort
end

def symbolize(arr)
  arr.map {|item| item.to_sym}
end


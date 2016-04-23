def word_count(string)
  string.split(" ").length
end

def average_word_length(string)
  if string.length < 1
    return nil
  end
  length_array = string.split(" ").map {|item| item.length}
  return length_array.inject(0) {|sum, num| sum += num}.fdiv(length_array.length)
end

def palindrome?(string)
  string.chars.reverse.join == string ? true : false
end

def vowels(string)
  string.split(" ").select {|word| word.match(/[aeiou]/)}
end

def start_with_c?(string)
  string.split(" ").all? { |word| word[0] == "c" }
end

def titlecase(string)
  string.split(" ").map { |word| word.capitalize }.join(" ")
end

def delete_last(string, num)
  string.replace(string[0...-num])
end

def to_money(num)
  "$" + "%.2f" % num
end

def numeric?(string)
  string.to_f == 0.0 ? false : true
end

def mean(arr)
  arr.inject(0) { |sum, num| sum += num}.fdiv(arr.length)
end

def super_compact(arr)
  arr.compact.delete_if { |item| item == "" || item == []}
end

def mode(arr)
  hash = Hash.new(0)
  arr.each { |item| hash[item] += 1}
  max = 0
  hash.each_value do |value|
    if value > max
      max = value
    end
  end
  hash.key(max)
end

def symbolize(arr)
  arr.map { |item| item.to_sym}
end
def word_count(string)
  string.split(" ").length
end

def average_word_length(string)
  return nil if string == ""
  word_sizes = string.split(" ").map { |word| word.size}
  word_sizes.reduce(:+).to_f / word_count(string)
end

average_word_length("i wish that i was cool")

def palindrome?(string)
  string == string.reverse ? true : false
end

def vowels(string)
  string.split(" ").select do |word|
    word if word.include?("a")| word.include?("e") | word.include?("i") | word.include?("o") | word.include?("u")
  end
end

def start_with_c?(string)
  string.split(" ").all? do |word|
    word[0] == "c"
  end
end

def titlecase(string)
  string.split(" ").map {|word| word.capitalize}.join(" ")
end

def delete_last(string, num)
   string.replace(string[0...-num])
end

def to_money(num)
   num = "%.2f" % num
  return "$#{num}"
end

def numeric?(item)
item.is_a? Numeric
end

def mean(array)
  array.reduce(:+).to_f / array.length
end

def super_compact(array)
  array.delete_if {|word| word == [] || word == "" || word == nil}
end

def mode(array)
  mode_hash = Hash.new(0)
  array.each {|elm| mode_hash[elm] +=1 }
  return_array = mode_hash.select {|elm, freq| freq == mode_hash.values.max}.keys
  return_array.join
end


def symbolize(array)
array.map{|elm| elm.to_sym}
end
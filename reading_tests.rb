def word_count(string)
  string.split(" ").count
end

def sum_word_length(string)
  string_count = string.split(" ").map do | word |
    word.length
  end
  string_count.reduce(0) { |sum, num| sum + num}
end

def average_word_length(string)
  average = sum_word_length(string).to_f / word_count(string)
  average > 0 ? average : nil
end

def palindrome?(string)
  string == string.reverse ? true : false
end

# def vowels(string)
#   vowels = %w(a e i o u)
#   new_string = string.split(" ").each do |word|
#     p word
#     word.each do |letter|
#       p letter
#       # return word if vowels.include?(letter)
#     end
#   end
#   new_string
# end

def start_with_c?(string)
  string.split(" ").all? { |word| word.start_with?("c") }
end

def titlecase(string)
  string.split(" ").map { |word |
    word[0].upcase + word[1..-1] }.join(" ")
end

def delete_last(string, num)
  string[0..(-num-1)]
end

def numeric?(string)
  string.is_a? Float
end

def total(array)
  array.reduce(0) { |sum, num| sum + num }
end

def mean(array)
  total(array) / array.count.to_f
end

def super_compact(array)
  array.delete_if { |elm| elm == nil || elm == [] || elm == "" }
end

def to_money(num)
end

def mode
end

def symbolize(array)
  array.map do | elm |
    elm.to_sym
  end
end

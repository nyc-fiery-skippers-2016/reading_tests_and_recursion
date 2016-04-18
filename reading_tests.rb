require 'pry'

def word_count(string)
  string.split.length
end


def average_word_length(string)
  string_count = string.split(" ").map do | word |
    word.length
  end
  p string_count
   string_count.reduce(:+)/string_count.length
end


p average_word_length("Hello I must be going")

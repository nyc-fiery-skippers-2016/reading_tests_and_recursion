require 'pry'
def word_count(word)
  word.split.length
end

def sum_word_length(string)
  string_count = string.split.map do | word |
    word.length
  end
  string_count.reduce(:+)
end


def average_word_length(string)
  average = sum_word_length(string).to_f / word_count(string)
  average > 0 ? average : nil
end


def palindrome?(word)
  word == word.reverse
end


def vowels(string)
  string.split(" ").select do |word|
    word.include?("a") || word.include?("e") || word.include?("i") || word.include?("o") || word.include?("u")
  end
end


def start_with_c?(sentence)
  sentence.split.all? { |word| word.start_with?('c')}
end

def titlecase(string)
  string.split.each { |word| word.capitalize! }.join(" ")
end


def delete_last(word, n)
  word.slice!(word.length-n..-1)
  word
end


def to_money(number)
  "$#{number.round(2).to_s}"
end


# def numeric(string)
#   # string.is_a Float
# end

def mean(array)
  array.reduce(:+)/array.length.to_f
end



def super_compact(array)
   array.delete_if { |element| element == nil || element.empty? }
end



def mode(arr)
  arr.max_by {|elm| arr.count(elm)}
end


def symbolize(array)
  array.map { |elm| elm.to_sym }
end




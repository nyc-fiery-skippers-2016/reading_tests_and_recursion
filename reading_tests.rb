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

def vowels(string)
  string.split(" ").select do |word|
    word.include?("a") || word.include?("e") || word.include?("i") || word.include?("o") || word.include?("u")
  end
end

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
  "$#{'%.2f'%num.round(2)}"
end

def mode(array)
  new_hash = {}
  array.each do |elm|
    if new_hash.has_key?(elm)
      new_hash[elm] += 1
    else
      new_hash[elm] = 1
    end
  end
  sorted = new_hash.sort_by { |key, value| value}.reverse
  sorted.first[0]
end

def symbolize(array)
  array.map do | elm |
    elm.to_sym
  end
end

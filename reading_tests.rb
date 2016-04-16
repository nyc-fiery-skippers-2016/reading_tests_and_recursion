def word_count(str)
  str.split(' ').length
end

def average_word_length(str)
  return nil if str.empty?
  p str.gsub(' ', '').length.to_f / str.split(' ').length
end

def palindrome?(str)
  str == str.reverse
end

def vowels(str)
  arr = []
  str.split(' ').each do |word|
    arr << word if ['A','E','I','O','U','a','e','i','o','u'].any?{ |i| word.include? i }
  end
  return arr
end

def start_with_c?(str)
  str.split(' ').each do |word|
    return false unless word[0] == 'c'
  end
  return true
end

def titlecase(str)
  str.split.map(&:capitalize).join(' ')
end

def delete_last(str, num)
  new_str = str[0...-num]
  str.clear
  str << new_str
end

def to_money(num)
  str = num.to_s
  str[0] = '$' + str[0]
  str += '00'
  str = str[0..str.index('.') + 2]
end

def numeric?(num)
  Float(num)
  return true
  rescue
    return false
end

def mean(arr)
  arr.reduce(:+).to_f/arr.length
end

def super_compact(arr)
  arr.delete_if {|i| i == nil || i.empty?}
end

def mode(arr)
  quantities = {}
  arr.each do |i|
    quantities[i] = 0 unless quantities.has_key?(i)
    quantities[i] += 1
  end
  quantities.max_by{|k,v| v}[0]
end

def symbolize(arr)
  arr.map {|i| i.to_sym}
end

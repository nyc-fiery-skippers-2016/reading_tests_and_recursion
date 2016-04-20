def word_count(string)
  string.split.count
end

def average_word_length(string)
  if string.empty?
   nil
  else
  	(string.split.join.length.to_f / string.split.count.to_f).round(2)
  end
end

def palindrome?(string)
  if string == string.reverse
  	true
  else
  	false
  end
end

def vowels(string)
  string.delete("0-9").split
end

def start_with_c?(string)
  string.split.all? { |word| word.start_with?("c") }
end

def titlecase(string)
  (string.split.map { |word| word.capitalize }).join(" ")
end

def delete_last(string, num)
 string.replace(string[0...-num])
end

def to_money(float)
  "$" + ('%.2f' % float)
end

def numeric?(string)
	if string.to_i == 0 || string.to_f == 0.0
		false
	elsif string.to_i.real? || string.to_f.real?
		true
	end
end

def mean(arr)
  arr.reduce(0, :+).to_f / arr.count.to_f
end

def super_compact(arr)
  arr.compact.delete_if {|elm| elm == [] || elm.empty?}
end

def mode(arr)
  arr.max_by {|elm| arr.count(elm)}
end

def symbolize(arr)
  arr.map {|elm| elm.to_s.to_sym}
end









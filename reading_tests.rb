def word_count(string)
	string.split.count
end

def average_word_length(string)
	if string.empty?
		return nil 
	else
		sum = 0
		word_array = string.split
		word_array.each {|word| sum += word.length.to_f}
		sum / word_array.count
	end
end

def palindrome?(string)
	string.reverse == string
end

def vowels(string)
	string.split.keep_if {|word| word =~ /[aeiou]/ }
end

def start_with_c?(string)
	string.split.map! do |word|
		string = word[0] == "c"
	end
	string
end

def titlecase(string)
	arr = string.split.map! {|word| word.capitalize }
	arr.join(" ")
end

def delete_last(string, num)
	if num <= 1
		string.delete!(string[-1])
	else
	arr = string.split("")
		while num > 0
			arr.pop
			num -= 1
		end
		arr.join("")
	end
end

# def delete_last(string, num)
# 	new_string = string[0...-num]
# 	string.clear
# 	string << new_string
# end

def to_money(num)
	"$" + num.to_f.round(2).to_s
	#9.00
end

def numeric?(string)
	string.is_a? Float
end

def mean(arr)
	arr.reduce(:+) / arr.count.to_f
end

def super_compact(arr)
	arr.delete_if do |elm|
		elm == nil || elm == "" || elm == []
	end
end

def mode(arr)
	arr.max_by {|elm| arr.count(elm)}
end

def symbolize(arr)
	arr.map! {|elm| elm.to_sym }
end



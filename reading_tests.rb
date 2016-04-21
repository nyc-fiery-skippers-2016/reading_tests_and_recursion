	def word_count(string)
		return string.split.length
	end

	def average_word_length(string)
		return nil if string.empty?

		b = string.split.reduce(0) do |sum, elm|
			sum + elm.length
		end
			return (b.to_f / string.split.length)
	end

	def palindrome?(string)
		string.eql?(string.reverse)
	end

	def vowels(str)
		
			str.split.find_all do |word|
			# binding.pry 
				if word.scan(/[aeiou]/).count >= 1
					word
				# else
				# 	word.delete
				end
			end
		end

	def start_with_c?(*str)
		# binding.pry
		str.each do |word| 
			if word.start_with?('c')
				return true
			else
				return false	
			end	
		end
	end

	def super_compact(arr)
		arr.delete_if { |elm| elm.eql?(nil) || elm.empty? }
		return arr
	end

	def titlecase(str)
		str.split.map! do |word|
			if word.downcase
				word.capitalize
			end
		end
	end

	def delete_last(str, num)			
		chopped = str.chars.pop(num)
		return str.chars -= chopped
	end

	def mean(arr)
		return arr.reduce(0){|sum, elm| sum + elm} / arr.length.to_f
	end

	def to_money(float)
		return '$%.2f' % float
	end

	def mode(arr)
		p arr.group_by{|i| i}.max{|x,y| x[1].length <=> y[1].length}[0]
	end

	def symbolize(arr)
		arr.map! {|elm| elm.to_sym }
	end

	def numeric?(string)
		string.is_a?(Float)
	end


require 'pry'
def word_count( string )
  string.split( " " ).count
end

def average_word_length( string )
  return nil if string == ''
  average = 0
  all_word_length = 0
  string.split( " " ).each do | word |
    all_word_length += word.length
  end
  average = all_word_length.to_f / string.split( " " ).length.to_f
end

def palindrome?( string )
  string == string.reverse
end

def vowels( string )
  string.split(" ").keep_if { |word| word =~ /[aeiou]/ }
end

def start_with_c?( string )
  string.split.all? { | word | word.start_with?('c') }
end

def titlecase( string )
  arr = string.split.map { | word | word.capitalize }
  arr.join(" ")
end

def delete_last( string, num )
  string.replace( string[0..(-1 - num)] )
end

def to_money( num )
  result = ['$']
  money = num.to_s.chars
  idx = 0
  until money[ idx - 1 ] == '.'
    result << money[ idx ]
    idx += 1
  end
  money.replace( money[ idx..-1 ] )
  money.count == 1 ? result.push( money[ 0 ], '0' ) : result.push( money[ 0 ], money[ 1 ] )
  result.join
end

def numeric?( num )
  return true if num.to_f && !num.is_a?( String )
  false
end

def mean( nums )
  nums.reduce(&:+).to_f / nums.length.to_f
end

def super_compact( arr )
  arr.select { |elm| elm != nil && elm != [] && elm != '' }
end

def mode( arr )
  count_hash = {}
  arr.each do | elm |
    count_hash[ elm ] ? count_hash[ elm ] += 1 : count_hash[ elm ] = 1
  end
  count_hash.key( count_hash.values.max )
end

def symbolize( arr )
  arr.map { | elm | elm.to_sym }
end
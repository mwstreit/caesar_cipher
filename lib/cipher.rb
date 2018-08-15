

def encode(string, offset)
  string_arr = string.split('')
  coded_arr = []
  string_arr.each do |letter|
    if letter =~ /[a-z]/
      num = letter.ord
      coded = num.to_i + offset.to_i
      if coded > 122
        coded = coded - 26
      elsif coded < 97
        coded = coded + 26
      end
    elsif letter =~ /[A-Z]/
      num = letter.ord
      coded = num.to_i + offset.to_i
      if coded > 90
        coded = coded - 26
      elsif coded < 65
        coded = coded + 26
      end
    else
      coded = letter
    end
    coded_arr << coded.chr
  end
  coded_arr.join('')
end
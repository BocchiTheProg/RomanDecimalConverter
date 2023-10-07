module RomanDecimal
  ROMAN_ARABIC = {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}

  def self.to_decimal(roman)
    res = 0
    i = 0
    loop do
      break if i >= roman.size
      n1 = self.find_value(roman[i].upcase)
      if i+1 >= roman.size
        res += n1
        break
      else
        n2 = self.find_value(roman[i+1].upcase)
        if n1 >= n2
          res += n1
        else
          res += n2 - n1
          i += 1
        end
      end
      i += 1
    end
    res
  end

  def self.to_roman(decimal)
    res = ""
    keys_arr = ROMAN_ARABIC.keys
    i = keys_arr.size
    loop do
      i -= 1
      break if i < 0
      loop do
        break if decimal < ROMAN_ARABIC[keys_arr[i]]
        res += keys_arr[i].to_s
        decimal -= ROMAN_ARABIC[keys_arr[i]]
      end
    end
    res
  end

  def self.find_value(char)
    ROMAN_ARABIC.each do |key, value|
      return value if key.to_s == char
    end
  end
end
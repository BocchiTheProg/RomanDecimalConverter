module RomanDecimal
  # Hash with Roman numerals (keys) and equivalent decimal numbers
  ROMAN_ARABIC = {"I" => 1,
                  "IV" => 4,
                  "V" => 5,
                  "IX" => 9,
                  "X" => 10,
                  "XL" => 40,
                  "L" => 50,
                  "XC" => 90,
                  "C" => 100,
                  "CD" => 400,
                  "D" => 500,
                  "CM" => 900,
                  "M" => 1000}

  def self.to_decimal(roman)
    res = 0
    # getting chars of string and indexes to have access to next char from current
    roman.each_char.with_index do |char, i|
      if i < roman.size - 1 and ROMAN_ARABIC[char] < ROMAN_ARABIC[roman[i+1]]
        res -= ROMAN_ARABIC[char]
      else
        res += ROMAN_ARABIC[char]
      end
    end
    res
  end

  def self.to_roman(decimal)
    res = ""
    # getting array of keys and going through it in reverse order (from higher numbers to lowest)
    ROMAN_ARABIC.keys.reverse_each do |key|
      loop do
        break if decimal < ROMAN_ARABIC[key]
        res += key
        decimal -= ROMAN_ARABIC[key]
      end
    end
    res
  end
end
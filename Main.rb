require './RomanDecimal'

if ARGV.empty?
  puts "Sorry, the input is empty"
elsif ARGV[0].match? /^\d+$/ # using regexes to validate input (only digits)
  decimal = ARGV[0].to_i
  if decimal < 1 or decimal >= 4000
    puts "Input is out of range (1 <= input < 4000)"
  else
    puts "Input from console:#{ARGV[0]} -> #{RomanDecimal.to_roman(decimal)}"
  end
elsif ARGV[0].upcase.match? /^[IVXLCDM]+$/ # using regexes to validate input (only Roman numerals
  roman = ARGV[0].upcase
  res = RomanDecimal.to_decimal(roman)
  if res < 1 or res >= 4000
    puts "Input is out of range (1 <= input < 4000)"
  else
    puts "Input from console:#{ARGV[0]} -> #{res}"
  end
else
  puts "Input include different systems or impossible letters"
end
puts "You can input Roman numeric and it will be converted to decimal number or vice versa"
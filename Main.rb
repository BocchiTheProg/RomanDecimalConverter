require './RomanDecimal'

input = "MCDXLIV"
puts "Convert Roman to Decimal"
puts "Input from code:#{input} -> #{RomanDecimal.to_decimal(input)}"
puts "Input from console:#{ARGV[0]} -> #{RomanDecimal.to_decimal(ARGV[0])}" unless ARGV.empty?

input_int = 94
puts "Convert Decimal to Roman"
puts "Input from code:#{input_int} -> #{RomanDecimal.to_roman(input_int)}"
puts "Input from console:#{ARGV[1]} -> #{RomanDecimal.to_roman(ARGV[1].to_i)}" unless ARGV[1].nil?
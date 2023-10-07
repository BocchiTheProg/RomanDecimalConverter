require './RomanDecimal'

input = "MDCLXVI"
puts "Convert Roman to Decimal"
puts "Input from code:#{input} -> #{RomanDecimal.to_decimal(input)}"
puts "Input from console:#{ARGV[0]} -> #{RomanDecimal.to_decimal(ARGV[0])}" unless ARGV.empty?
puts "Convert a number to roman numeral:"
number = gets.chomp.to_i

def roman_numerals number
  roman = ""
  ones = number % 10
  tens = number % 100 / 10

  if tens == 9
    roman = roman + "XC"
  elsif tens == 4
    roman = roman + "XL"
  else
    roman = roman + "L" * (number % 100 / 50)
    roman = roman + "X" * (number % 50 / 10)
  end

  if ones == 9
    roman = roman + "IX"
  elsif ones == 4
    roman = roman + "IV"
  else
    roman = roman + "V" * (number % 10 / 5)
    roman = roman + "I" * (number % 5 / 1)
  end
end

puts roman_numerals(number)

=begin
1	I
4	IV
5	V
9	IX
10	X
40	XL
50	L
90	XC
100	C
400	CD
500	D
900	CM
1000	M
=end
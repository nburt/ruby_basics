puts "Convert a number to roman numerals:"
number = gets.chomp.to_i

def roman_numerals number

  ones = number % 10
  tens = number % 100 / 10
  hundreds = number % 1000 / 100
  thousands = number / 1000
  roman = "M" * thousands

  if hundreds == 9
    roman = roman + "CM"
  elsif hundreds == 4
    roman = roman + "CD"
  else
    roman = roman + "D" * (number % 1000 / 500)
    roman = roman + "C" * (number % 500 / 100)
  end

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

  roman
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
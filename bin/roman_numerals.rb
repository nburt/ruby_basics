puts "Convert a number to roman numeral:"
number = gets.chomp.to_i

num_hash = {
  1 => "I",
  4 => "IV",
  5 => "V",
  9 => "IX",
  10 =>	"X",
  40 =>	"XL",
  50 =>	"L",
  90 =>	"XC",
  100 => "C",
  400 => "CD",
  500 => "D",
  900 => "CM",
  1000 =>	"M"
}

num_hash.each do |k, v|
  if number % k.to_i == 0
    puts v
  end
end

#Use modulo to see if it is divisible by 1 or 5
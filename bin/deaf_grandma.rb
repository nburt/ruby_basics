puts "What would you like to ask grandma?"
answer = gets.chomp
year = rand(1930..1950)

if answer.upcase == answer
  puts "NO, NOT SINCE #{year}!"
else
  puts "HUH?! SPEAK UP SONNY!"
end
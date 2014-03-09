puts "How many bottles?"
bottles = gets.chomp

if bottles == ""
  puts "I need to know how many bottles to sing!"
elsif bottles.to_i.to_s != bottles
  puts "I need a number."
else
  bottles = bottles.to_i
end

while bottles >= 0
  if bottles == 2
    puts "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
  elsif bottles == 1
    puts "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no bottles of beer on the wall.\n"
  elsif bottles == 0
    puts "No bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  else
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\nTake one down and pass it around, #{bottles - 1} bottles of beer on the wall.\n"
  end
  bottles -= 1
end
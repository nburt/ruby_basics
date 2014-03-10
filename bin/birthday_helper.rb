require "date"

bday_file = File.new("/Users/nathanaelburt/gSchoolWork/ruby_basics/bin/birthday_data.csv", "r")
bday_lines = bday_file.readlines
person_info = {}

# Create a hash with the person's first and last name as the key and the array as the value
bday_lines.each do |x|
  person = x.chomp.split(",")
  person_info[person[1] + " " + person[0]] = person
end

puts "Who do you want to look up?"
name = gets.chomp
person_bday = ""


# Iterates through person_info and adds the person's bday if their name matches one of the keys
person_info.each do |k, v|
  if k[name]
    person_bday = v[2]
  end
end

# Find person's age and make the date look pretty
person_bday_date = Date.parse(person_bday)
today = Date.today
age = today.year - person_bday_date.year

puts person_bday_date.strftime("%B %-d, %Y") + ",\n                                #{age} years old"

# is there an easier way with csv?
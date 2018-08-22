# lets put all students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Coleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
  ]
def print_header
  puts "The students of villains academy"
  puts "-------------"
end
def print(names)
  names.each do |name|
    puts name
  end
end
def print_footer(names)
  puts puts "overall we have #{names.count} great students"
end
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)



 
@students = [] # an empty array accessible to all methods

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # get the first name
    name = gets.chomp.to_sym.downcase.capitalize
  while !name.empty? do
    puts "Which cohort is the student in?"
    cohort = gets.chomp.to_sym.downcase.capitalize
    @students << {name: name, cohort: cohort}
    if @students.count == 1
    puts "Now we have #{@students.count} student"
    else 
      puts "Now we have #{@students.count} students"
    end
    # get another name from the user
    name = gets.chomp
  end
end

def print_header
  if @students.length > 0
    puts "The students of villains academy"
    puts "-------------"
  end
end

def print_students_list
  if @students.length > 0
    @students.each_with_index do |student, number|
    puts "#{number+1}. #{student[:name]} (#{student[:cohort]} cohort)".center(100) # exercises - 1. each with index. previous code = students.each do |student| puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
  end
end

def print_footer
  if @students.length > 0
    puts puts "overall we have #{@students.count} great students"
  else
    puts "We currently have no students."
  end
end
# nothing happens until we call the methods

def print_menu
  # 1. print the menu and ask the user what they want to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to the students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items later
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students  
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
  end
end

def interactive_menu
  loop do
    # 2. read the input and save it to a variable
    print_menu
    process(gets.chomp)
    # 3. do what the user has asked
  end
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
end


interactive_menu




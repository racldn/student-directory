def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp.to_sym.downcase.capitalize
  while !name.empty? do
    puts "Which cohort is the student in?"
    cohort = gets.chomp.to_sym.downcase.capitalize
    students << {name: name, cohort: cohort}
    if students.count == 1
    puts "Now we have #{students.count} student"
    else 
      puts "Now we have #{students.count} students"
    end
    # get another name from the user
    name = gets.chomp
  end
    # return the array of students
    students
end


def sort_by_cohort(input_students)
  
  sorted_by_cohort = {}
  input_students.each do |cohort_sort|
    cohort = cohort_sort[:cohort]
    name = cohort_sort[:name]
  
      if sorted_by_cohort[cohort] == nil
        sorted_by_cohort[cohort] = [name]
      else sorted_by_cohort[cohort].push(name)
      end
  end
  puts sorted_by_cohort.sort
end
  

def print_header
  puts "The students of villains academy"
  puts "-------------"
end
def print(students)
  students.each_with_index do |student, number|
    puts "#{number+1}. #{student[:name]} (#{student[:cohort]} cohort)".center(100) # exercises - 1. each with index. previous code = students.each do |student| puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(students)
  puts puts "overall we have #{students.count} great students"
end
# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
sort_by_cohort(students)


 
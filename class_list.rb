# Bonus Challenge - Class List

# Create an array of students and allow the user to keep adding new students to the array.
# After each student is added, display the array to the user (use the inspect method to display
# the array). If the user decides to not add an additional student, display the list of the
# students and the index that each student is at (check out .each_with_index) Here is a sample prompt:

#   Would you like to add another student?
#   yes
#   What is the student's name?
#   Taco
#   The array of students now looks like: ["Taco"]
#   Would you like to add another student?
#   no
#   Here is a summary of your student array:
#   The student at index 0 is Taco


def class_list(students = [])
  students = students

  puts "Would you like to add another student?"
  response = gets.chomp

  if response == "yes"
    puts "What is the student's name?"
    name = gets.chomp
    students.push(name)
    puts "The students array now looks like: " + students.inspect
    class_list(students)

  elsif response == "no"
    puts "Here is a summary of the students array:"
    students.each_with_index do |student, index|
      puts "The student at index " + "#{index}" + " is " + "#{student}" + "."
    end
  end

end


class_list()
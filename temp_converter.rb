# Challenge 1 - Temperature Converter

# Create a simple temperature convertor. It should function like the example below:

#   Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius
#   1
#   Enter Celsius Temperature:
#   24
#   24 degrees Celsius is equal to 75.2 degrees Fahrenheit


def temp_converter()
  puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius."
  response = gets.chomp

  if response == "1"
    puts "Enter Celsius Temperature:"
    temp = (gets.chomp).to_i
    f_temp = (temp * 9/5) + 32
    puts "#{temp}" + " degrees Celsius is equal to " + "#{f_temp}" + " degrees Fahrenheit"

  elsif response == "2"
    puts "Enter Fahrenheit Temperature:"
    temp = (gets.chomp).to_i
    c_temp = (temp - 32) * (5/9)
    puts "#{temp}" + " degrees Fahrenheit is equal to " + "#{c_temp}" + " degrees Celsius"
  end

end


temp_converter()
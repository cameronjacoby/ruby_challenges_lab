# Challenge 3 - Reverse a string

# Reverse a string in place. In other words, do not create a new string or use other methods on 
# the string such as reverse. The goal of the problem is to use a loop and the string accessors
# to figure out which values to swap for other values. Below is the output.

#   Enter a string:
#   reverse_me
#   em_esrever

def reverse_str(string)
  half_length = string.length / 2
  half_length.times do |i|
    string[i], string[-i-1] = string[-i-1], string[i]
  end
  return string
end


puts reverse_str('this is a long string that I want to reverse')
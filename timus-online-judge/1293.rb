#need urgent processing.
# one square meter of the panel needs 1 nanogramm of sulphide
# Calculate sulphide needed.
#

numbers = gets.split(" ").map(&:to_i)
area = numbers[1..-1].inject(:*)
puts area * numbers[0] * 2


#no more than 10 on a log.
#harry left to right
#larry right to left
#at some moment shot the same, not the same moment!
#nobody remembered how many cans where at the beginning

numbers = gets.split(" ").map(&:to_i)
puts [numbers[1] - 1, numbers[0] -1].join(" ")


#karlsson ate all sweets.
#little boy decided no choc for karl.
#use karl's addication to the games
#of chance.
#choc bar rectangle.
# M rows and N columns.
rows, columns = gets.split.map(&:to_i)
puts rows * columns % 2 == 0 ? "[:=[first]" : "[second]=:]"

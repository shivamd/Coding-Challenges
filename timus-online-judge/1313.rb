numbers_of_pixels = gets.to_i
positive_integers = []
result = []
numbers_of_pixels.times do
  positive_integers << gets.split(" ")
end

positive_integers.each_with_index do |int, idx|
  idx.downto(0) do |i|
    result << positive_integers[i].shift
  end
end

while positive_integers[numbers_of_pixels -1].length > 0 do
  positive_integers.reverse_each do |i|
    result << i.shift
  end
end

puts result.compact.join(" ")



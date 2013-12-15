#solution ready in 5 minutes.
# discern the word 'eigenvalues'
# a number was a team's eigenvalue
# if it was an eigenvalue for each
# of its players.
# first line N number of player's eigenvalues
# second line distinct integers in ascending order
# which are the eigenvalues. All are positive.

p1_no_values = gets.to_i
p1_values = gets.split.map(&:to_i)
p2_no_values = gets.to_i
p2_values = gets.split.map(&:to_i)
p3_no_values = gets.to_i
p3_values = gets.split.map(&:to_i)

if p1_no_values >= p2_no_values && p1_no_values >= p3_no_values
  if p2_no_values >= p3_no_values
    result = p1_values - (p1_values - (p2_values - (p2_values - p3_values)))
  else
    result = p1_values - (p1_values - (p3_values - (p3_values - p2_values)))
  end
elsif p2_no_values >= p1_no_values && p2_no_values >= p3_no_values
  if p1_no_values >= p3_no_values
    result = p2_values - (p2_values - (p1_values - (p1_values - p3_values)))
  else
    result = p2_values - (p2_values - (p3_values - (p3_values - p1_values)))
  end
else
  if p1_no_values >= p2_no_values
    result = p3_values - (p3_values - (p1_values - (p1_values - p2_values)))
  else
    result = p3_values - (p3_values - (p2_values - (p2_values - p1_values)))
  end
end
puts result.count

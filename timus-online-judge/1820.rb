#order N speciality steaks.
#steak cooked by frying, each side for one minute.
#chef has one frying pan.
#at most K steaks can be cooked simultaneously.
#Find the time the chef needs to cook the steaks.
#each steak takes 2 minutes to cook.

no_of_steaks, max_steaks = gets.split(" ").map(&:to_i)
abort("2") if no_of_steaks < max_steaks

result = 0
sides_of_steaks = no_of_steaks * 2
while sides_of_steaks > max_steaks
  minutes, sides_of_steaks = sides_of_steaks.divmod(max_steaks)
  result += minutes
end
result += 1 if sides_of_steaks > 0
puts result

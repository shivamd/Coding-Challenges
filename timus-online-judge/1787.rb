# K cars are able to take a turn in one minute.
# weekends > huge traffic jam. All residents drive there.
# camera to calculate no of cards approaching this turn
# from the city
# observation started N minutes ago.
# use data from camera to determine the number of cards currently
# in the traffic jam.

max_cars, observation_started = gets.split.map(&:to_i)
cars_approached = gets.split.map(&:to_i)

start = 0
cars_approached.each do |cars|
  start += cars
  if start >= max_cars
    start -= max_cars
  else
    start = 0
  end
end
puts start > 0 ? start : 0

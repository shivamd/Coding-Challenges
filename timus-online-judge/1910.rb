#famous wizards.
# took part in all events.
# first wizards to arrive.
# power wizards, study development.
# saw a blank wall against a rock.
# The wall was divided into small identical sections.
# entrance? hidden.
# titan > always door > width > 3 such sections.
# choose 3 consecutive sections with maximum
# total force of the field.
# first line N number of sections in the wall.
# second line P positive integers which are the forces
# of the magic field action on each section.
# output 2 integers, should be the max total force
# of the field action on 3 consectutive sections 
# of the wall.
sections = gets.to_i
numbers = gets.split.map(&:to_i)
force = 0
i = 2
while i < sections do
  sum = numbers[i-2..i].inject(:+)
  if sum > force
    force = sum
    middle_integer = i
  end
  i+= 1
end
puts "#{force} #{middle_integer}"

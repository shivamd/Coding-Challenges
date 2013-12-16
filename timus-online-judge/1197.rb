# determine how many squares of the chessboard
# can be attacked by a knight STANDING ALONE 
# on the board.
# first line N number of test cases. 
# next lines contain a test.
# 2 characters. that specify the rank 
# and file of the square at which
# the knight is standing.
#
# In order to move you need 2 squares in any direction
# and then at least one square in the opposite direction. 
#
# Let's take a1 for example.
# split it a and 1.
# 1 + 2 =3 which is less than 8. accepted
# 1 - 2 = -1 which is less than 0 0
# a is like 1. a + 1 =b accepted less than 8/h
# a - 1. less than 0 rejected. 
# this is one set of moves. one move is accepted. 
# We do to the same the other way round. 

char_to_num = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8
}

no_test_cases = gets.to_i
test_cases = []
no_test_cases.times do |i|
  test_cases << gets.chomp
end
result = []
test_cases.each do |i|
  moves = 0
  char, int = i.split("")
  int = int.to_i
  move_forward = int + 2 <= 8 ? 1 : 0
  move_backward = int - 2 > 0 ? 1 : 0
  move_left_one = char_to_num[char] - 1 > 0 ? 1 : 0
  move_right_one = char_to_num[char] + 1 <= 8 ? 1 : 0
  moves += move_forward  * (move_left_one + move_right_one)
  moves += move_backward * (move_left_one + move_right_one)
  move_left = char_to_num[char] - 2 > 0 ? 1 : 0
  move_right = char_to_num[char] + 2 <= 8 ? 1 : 0
  move_up_one = int + 1 <= 8 ? 1 : 0
  move_down_one = int - 1 > 0 ? 1 : 0
  moves += move_left  * (move_up_one + move_down_one)
  moves += move_right  * (move_up_one + move_down_one)
  result << moves
end
puts result







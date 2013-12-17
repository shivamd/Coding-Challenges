# program allowed to calculate the results
# of elections in cause of 2 days.
# task is to write a very useful
# function that would ease the life of all
# department programmers.
# for each integer from 0 to M the function
# would calculate how many times this number
# appears in the N-element array.

n_element_array, m_integer = gets.split.map(&:to_i)
puts (m_integer + 1) * n_element_array

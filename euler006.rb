sum_of_squares = 0
sum = 0
1.upto(100).each do |num|
  sum += num
  sum_of_squares += num*num
end
puts sum**2 - sum_of_squares

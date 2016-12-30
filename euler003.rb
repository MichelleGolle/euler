# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

number = 600851475143
n = 2
factors = []
while number != 1
  if number % n == 0 && Prime.prime?(n)
    factors << n
    number = number / n
  end
  n += 1
end

puts factors[-1]

# solution: 6857

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

require 'prime'

sum = 0
1.upto(2_000_000) do |n|
  sum += n if n.prime?
end

puts sum

#Solution: 142913828922

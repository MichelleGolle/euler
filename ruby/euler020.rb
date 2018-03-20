# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!
require 'pry'

class Factorial
  def factorial(num)
    num.downto(1).reduce(:*)
  end
  def sum
    num = factorial(100)
    num.to_s.split('').map {|n| n.to_i}.reduce(:+)
  end
end

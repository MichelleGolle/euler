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

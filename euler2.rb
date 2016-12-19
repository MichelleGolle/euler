fib = [1,2,3]

while fib[-1] <= 4000000
  fib << fib[-1] + fib [-2]
end

even_fibs = fib.select { |num| num.even? }

puts even_fibs.reduce(:+)

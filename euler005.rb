# 2520 is the smallest number that can be divided by each of the numbers from
 # 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by
# all of the numbers from 1 to 20?

def divisible_by_1to20?(number)
  divisors = [19, 18, 17, 16, 15, 14, 13, 12, 11]
  divisors.each do |n|
    if (number%n != 0)
      return false
    end
  end
  return true
end

number, base = 20, 1
until divisible_by_1to20?(number)
  number = base*20
  base += 1
end

puts number

# soution: 232792560

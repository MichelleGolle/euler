# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(number)
  number_string = number.to_s
  number_string == number_string.reverse
end


largest_palindrome = 0
100.upto(999) do |a|
  100.upto(999) do |b|
    largest_palindrome = a * b if ( palindrome?(a*b) && (a*b) > largest_palindrome )
  end
end
puts largest_palindrome

# solution: 906609

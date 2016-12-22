
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

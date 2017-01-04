# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
#
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

1.upto(999) do |a|
  a.upto(999) do |b|
    c = 1000 - a - b
    if (a*a + b*b - c*c).zero?
      puts a*b*c
      exit
    end
  end
end

#solution: 31875000

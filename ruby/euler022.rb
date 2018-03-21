# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
#
# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
#
# What is the total of all the name scores in the file?
require 'pry'

class Names
  def sum
    names_list = File.open('../p022_names.txt', 'r')
    names_array = names_list.gets.scan(/\w+/).sort
    score_total = 0

    alphabet_values = Hash.new
    i = 1
    ("a".."z").each do |char|
      alphabet_values[char] = i
      i += 1
    end

    names_array.each_with_index do |name, index|
      position = index + 1
      score = name.downcase.split('').map do |char|
        score = alphabet_values[char]
      end
      score = score.reduce(:+)
      score_total += (score * position)
    end
    score_total
  end
end

# You are given the following information, but you may prefer to do some research for yourself.
#
# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
require 'pry'

class Sunday
  def count
    thirty_day_months = [4, 6, 9, 11]

    month, day, year, weekday = 1, 1, 1900, 2 # weekdays are 1-7 so Monday is 2

    def leap?(year)
      return false if year == 1900
      return true if year % 4 == 0
    end

    first_sunday_count = 0

    while year < 2001
      if (weekday == 1 && day == 1 && year > 1900)
        puts "******First sunday: #{month} #{day} #{year}"
        first_sunday_count += 1
      else
        puts "month: #{month} day: #{day} weekday: #{weekday} year: #{year}"
      end

      case day
        when 1..27
          day += 1
        when 28
          if month == 2 && leap?(year)
            day += 1
          elsif month == 2 && !leap?(year)
            day, month = 1, 3
          else
            day += 1
          end
        when 29
          if month == 2
            day, month = 1, 3
          else
            day += 1
          end
        when 30
          if thirty_day_months.include?(month)
            day, month = 1, month + 1
          else
            day += 1
          end
        when 31
          if month == 12
            month, day, year = 1, 1, year + 1
          else
            day, month = 1, month + 1
          end
      end
      weekday += 1
      weekday = 1 if weekday > 7 # go back to sunday after 7
    end
    first_sunday_count
  end
end

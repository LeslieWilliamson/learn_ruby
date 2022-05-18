#!/usr/bin/env ruby
require 'date'

@months = ["January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"]

@days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]


def show_title title
    program_name = "| #{title} |"
    puts "-" * program_name.length
    puts program_name
    puts "-" * program_name.length
end

def get_birth_year
    puts "What year were you born?"
    year = gets.chomp.to_i
end

def get_birth_month
    puts "What month were you born?"
    month = gets.chomp.to_i
end

def get_name_of_month month
    @months[month-1]
end

def get_name_of_weekday day
    @days[day]
end

def get_day_suffix day
    case day % 10
    when 1
        "st"
    when 2
        "nd"
    when 3
        "rd"
    else
        "th"
    end
end

def get_birth_day_of_month
    puts "What day of the month were you born?"
    month_day = gets.chomp.to_i
end

def main
    show_title "Birthday Analysis"

    year = get_birth_year
    month = get_birth_month
    month_name = get_name_of_month month
    # month_name = get_name_of_month(get_birth_month) 
    month_day = get_birth_day_of_month

    birth_date = Date.new(year, month, month_day)
    puts "You were born #{get_name_of_month birth_date.month} #{birth_date.day}, #{birth_date.year}."
    puts "You were born on a #{get_name_of_weekday birth_date.wday}"
    puts "  in the #{birth_date.cweek}#{get_day_suffix birth_date.cweek} week of the year"
    puts "  and the #{birth_date.yday}#{get_day_suffix birth_date.yday} day of the year."
    puts "You were born in a leap year." if birth_date.leap? 
    
end

main
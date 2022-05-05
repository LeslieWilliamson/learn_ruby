#!/usr/bin/env ruby 

require_relative 'classes/DiceSet'


def show_title
    program_name = "| Dice Roll |"
    puts "-" * program_name.length
    puts program_name
    puts "-" * program_name.length
end

def main
    show_title

    dice = DiceSet.new 

    loop do
        dice.display
        puts "Hit any key to roll again, 'q' to quit."
        break if (gets.chomp == 'q')
        dice.roll
    end
end

main
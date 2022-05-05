require_relative 'Die'

class DiceSet

    # attr_reader :dice

    def initialize(options={})
        number_of_dice = options[:number] || 2
        sides_of_die = options[:sides] || 6

        @dice = Array.new(number_of_dice)

        (0...number_of_dice).each do |i|
            @dice[i] = Die.new({sides: sides_of_die})
        end
    end

    def roll
        @dice.each {|die| die.roll}
    end

    def display
        @dice.each {|die| die.display}
        puts
    end
end
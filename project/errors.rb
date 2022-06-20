#!/usr/bin/env ruby

def divide(x,y)
    
    puts x/y

rescue ZeroDivisionError => e
    puts "#{e.class}: #{e.message}"
    puts e.backtrace

rescue TypeError, ArgumentError => e
    puts "#{e.class}: #{e.message}"
    puts e.backtrace

rescue => e
    puts "#{e.class}: #{e.message}"
    puts "#{e.backtrace}."
end

divide(4,2)
divide(4,0)
divide(4,"0")

begin
    
    divide(4)

rescue  ArgumentError => e
    puts "#{e.full_message}"
end

class NoEvenNumbers < StandardError

    attr_accessor :array
    def initialize(array)
        super("No even numbers")
        @array = array
    end

end


def even_numbers(array)
    
    unless array.is_a?(Array)
        raise ArgumentError
    end

    if array.length == 0
        raise StandardError.new("Too few elements")
    end

    even_array = array.find_all {|el| el.to_i % 2 == 0}

    if even_array.length == 0
        raise NoEvenNumbers.new(array)
    end

    even_array
end

puts even_numbers([1,2,3,4,5]).join(',')

begin
    puts even_numbers(1..20)    
rescue => e
    puts "#{e.full_message}"
end


begin
    puts even_numbers([])    
rescue => e
    puts "#{e.full_message}"
end

begin
    puts even_numbers([1,3,5,7,9]).join(',')
rescue => e
    puts "#{e.full_message}\n#{e.array}"
end

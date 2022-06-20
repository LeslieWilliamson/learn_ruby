#!usr/bin/env ruby
require_relative "classes/Radio"
require_relative "classes/SecureRadio"

am_radio = Radio.AM
puts am_radio.status
puts "-" * 10

am_radio.volume = 4
am_radio.frequency = 600
puts am_radio.status
puts "-" * 10

begin
    am_radio.volume = 12
rescue => exception
    puts "#{exception.full_message}"    
end

am_radio.frequency = 1800
puts am_radio.status
puts "-" * 10

fm_radio = Radio.FM
puts fm_radio.status
puts "-" * 10

fm_radio.volume = 9
fm_radio.frequency = 102.5
puts fm_radio.status
puts "-" * 10

begin
    am_radio.volume = 12
rescue => exception
    puts "#{exception.full_message}"    
end
fm_radio.frequency = 87.5
puts fm_radio.status
puts "-" * 10

fm_radio.play
fm_radio.play
fm_radio.play
fm_radio.play
puts "-" * 10

sec_radio = SecureRadio.new
sec_radio.play
sec_radio.play
sec_radio.play
sec_radio.play

# Can only create a class using factory methods
# radio = Radio.new
# puts radio.frequency

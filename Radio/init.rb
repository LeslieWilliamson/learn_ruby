#!usr/bin/env ruby
require_relative "classes/Radio"

am_radio = Radio.AM
puts am_radio.status
puts "-" * 10

am_radio.volume = 4
am_radio.frequency = 600
puts am_radio.status
puts "-" * 10

am_radio.volume = 12
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

fm_radio.volume = 12
fm_radio.frequency = 87.5
puts fm_radio.status
puts "-" * 10

# Can only create a class using factory methods
# radio = Radio.new
# puts radio.frequency

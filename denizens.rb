#!/usr/bin/ruby
require_relative('lib/Denizens')

denizens = Denizens.new

current_year = denizens.this_year
count = 1

growth_rate = 0.012
25.times do
  current_year = current_year + count
  population = 6962259595 * (1 + 0.012 ) ** count
  puts "#{current_year.to_s}\t#{population.to_i}" 
  count = count + 1
end

denizens.growth(2025, 25)

denizens.get_pop(2016)

denizens.generate_table(55)

#!/usr/bin/ruby
# Create a program that calculates world population growth each year for the next 25 years, 
# using the simplifying assumption that the current growth rate will stay constant. 
# When displaying the results, the first column should display the year from year 1 to year 25; 
# the second column should display the anticipated world population at the end of that year; 
# the third column should display the numerical increase in the world population that would 
# occur that year. Using your results, determine the first year in which the population would
# be double what it is today, if this year’s growth rate were to persist. Use the following 
# formula and data (n.b. use the long data type for your numbers):
#
# population in year n  = current population  ∗ (1 + growth rate)n  
# 
# where: current population is 6,962,259,595 growth rate is 1.2%
#
require_relative('lib/Denizens')
denizens = Denizens.new

num_of_years = ARGV[0]
puts num_of_years.inspect
if num_of_years.nil?
  denizens.generate_table(25)
else
  denizens.generate_table(num_of_years)
end

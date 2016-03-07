require 'date'

class Denizens
  attr_reader :this_year, :rate, :pop
  
  # Setup some constants
  POP=6962259595
  RATE=0.012

  def initialize

    @this_year = Date.today.strftime("%Y").to_i
    @pop = POP
    @rate = RATE

  end

  # This will return the population of the year given
  def growth(start_year, years_to_calculate)
    puts "Starting Year: #{start_year.to_i}"
    years_to_calculate.times do |pop|
      puts start_year.to_i + pop
    end
  end

    # population = 6962259595 * (1 + 0.012 ) ** count
    #return population_in_year_n = POP * (1 + RATE ) ** 2
  # the goal of this function is to return the population in a given year
  def get_pop(year)
    diff = year - @this_year
    for y in 1..diff
      population =@pop * (1 +  @rate) ** y
      puts "#{y} #{population.round.to_i}"
    end
  end

  # generate a population hash
  def generate_table(num_of_years)
    max_year = @this_year + num_of_years
    for y in @this_year..max_year
      if y == @this_year
        population = @pop
      else
        diff = y - @this_year
        population = @pop * (1 + @rate) ** diff
        pop_growth = population.to_i - @pop.to_i
      end
      puts "Year: #{y}\t Population #{population.round}\t Growth: #{pop_growth} "
    end
  end

  def is_double?(current_population)
    return true if current_population / @pop == 2
  end

end

require 'prime'
class PrimeFactors
  def self.for(n)
    return [] if n == 1

    factors = []
    factor_array = Prime.entries(894175)
    i = 0
    number = n

    until false
      factor = factor_array[i]
      if number % factor == 0
        factors << factor
        number = number / factor
        break if number == 1
      else
        i += 1
      end
    end

    factors
  end
end

require 'prime'
class PrimeFactors
  def self.for(n)
    factors = []
    factor = 2
    number = n
    return [] if n == 1
    until false
      if number % factor == 0
        factors << factor
        number = number / factor
        break if number == 1
      else
        factor += 1
      end
    end
    factors
  end
end

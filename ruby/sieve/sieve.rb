require 'prime'
class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    Prime.entries(@number)
  end
end

module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(n)
    raise ArgumentError if n == 0
    primes = [2]
    candidate_prime = 3

    until primes.length == n do
      if prime?(candidate_prime)
        primes << candidate_prime
      end
      candidate_prime += 1
    end

    primes.last
  end

  def self.prime?(n)
    (2...n).each do |i|
      return false if n % i == 0
    end
    true
  end
end

module BookKeeping
  VERSION = 1
end

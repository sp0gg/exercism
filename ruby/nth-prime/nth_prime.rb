class Prime
  def self.nth(n)
    raise ArgumentError if n == 0
    return 2 if n == 1

    prime_counter = 1
    candidate_prime = 3

    while prime_counter < n do
      if prime?(candidate_prime)
        prime_counter += 1
        return candidate_prime if prime_counter == n
      end
      candidate_prime += 1
    end

  end

  def self.prime?(n)
    2.upto(n-1) do |i|
      return false if n % i == 0
    end
    true
  end
end

module BookKeeping
  VERSION = 1
end

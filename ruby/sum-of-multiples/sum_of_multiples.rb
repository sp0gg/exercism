class SumOfMultiples
  def initialize(*args)
    @multiples = args
  end

  def to(n)
    (2...n).to_a.find_all{|e| @multiples.find {|m| e % m == 0}}.inject(:+) || 0
  end
end

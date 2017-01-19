class Series
  def initialize(str)
    @str = str
  end

  def slices(n)
    n <= @str.length ? @str.chars[0..-n].map.with_index{|char, i| @str.slice(i, n)} : (raise ArgumentError)
  end
end

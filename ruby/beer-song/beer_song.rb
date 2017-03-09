class BeerSong

  def verse(n)
    first_line(n) + last_line(n)
  end

  def verses(*n)
    range = (n[1]..n[0]).to_a.reverse
    range.map{|i| verse(i)}.join("\n")
  end

  def lyrics
    verses(99,0)
  end

  def first_line(n)
    "#{quantity(n)} #{bottles(n)} of beer on the wall, #{quantity(n).downcase} #{bottles(n)} of beer.\n"
  end

  def last_line(n)
    return "Go to the store and buy some more, 99 bottles of beer on the wall.\n" if n == 0
    "Take #{units(n)} down and pass it around, #{quantity(n-1).downcase} #{bottles(n-1)} of beer on the wall.\n"
  end

  def bottles(n)
    n == 1 ? 'bottle' : 'bottles'
  end

  def units(n)
    n == 1 ? 'it' : 'one'
  end

  def quantity(n)
    n == 0 ? 'No more': n.to_s
  end

end

module BookKeeping
  VERSION = 2
end

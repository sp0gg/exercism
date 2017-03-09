class BeerSong


  def initialize

  end

  def verse(n)
    first_line(n) + last_line(n)
  end

  def first_line(n)
    "#{quantity(n)} #{bottles(n)} of beer on the wall, #{quantity(n).downcase} #{bottles(n)} of beer.\n"
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

  def last_line(n)
    return "Go to the store and buy some more, 99 bottles of beer on the wall.\n" if n == 0
    "Take #{units(n)} down and pass it around, #{quantity(n-1).downcase} #{bottles(n-1)} of beer on the wall.\n"
  end
end

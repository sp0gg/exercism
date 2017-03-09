class BeerSong

  START_VERSE = 0
  END_VERSE = 99

  def verse(n)
    first_line(n) + second_line(n)
  end

  def verses(last, first)
    range = (first..last).to_a.reverse
    range.map{|n| verse(n)}.join("\n")
  end

  def lyrics
    verses(END_VERSE, START_VERSE)
  end

  def first_line(n)
    "#{quantity_bottles(n).capitalize} of beer on the wall, #{quantity_bottles(n)} of beer.\n"
  end

  def second_line(n)
    return "Go to the store and buy some more, 99 bottles of beer on the wall.\n" if n == 0
    "Take #{units(n)} down and pass it around, #{quantity_bottles(n-1)} of beer on the wall.\n"
  end

  def quantity_bottles(n)
    "#{quantity(n)} #{bottles(n)}"
  end

  def quantity(n)
    n == 0 ? 'no more': n.to_s
  end

  def bottles(n)
    n == 1 ? 'bottle' : 'bottles'
  end

  def units(n)
    n == 1 ? 'it' : 'one'
  end

end

module BookKeeping
  VERSION = 2
end

# Write your code for the 'Proverb' exercise in this file. Make the tests in
# `proverb_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/proverb` directory.

class Proverb
  attr_reader :words, :qualifier

  def initialize(*words, qualifier: nil)
    @words = words
    @qualifier = qualifier ? "#{qualifier} " : nil
  end

  def to_s
    output = ''
    0.upto(words.size - 2) do |idx|
      output << line(words[idx], words[idx + 1])
    end
    output << end_line(words[0])
  end

  def line(first, second)
    "For want of a #{first} the #{second} was lost.\n"
  end

  def end_line(item)
    "And all for the want of a #{qualifier}#{item}."
  end
end

# frozen_string_literal: true

# Write your code for the 'Twelve Days' exercise in this file. Make the tests in
# `twelve_days_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/twelve-days` directory.

PARTRIDGE_STRING = 'a Partridge in a Pear Tree'

GIFTS = [
  ['first', "and #{PARTRIDGE_STRING}"],
  ['second', 'two Turtle Doves'],
  ['third', 'three French Hens'],
  ['fourth', 'four Calling Birds'],
  ['fifth', 'five Gold Rings'],
  ['sixth', 'six Geese-a-Laying'],
  ['seventh', 'seven Swans-a-Swimming'],
  ['eighth', 'eight Maids-a-Milking'],
  ['ninth', 'nine Ladies Dancing'],
  ['tenth', 'ten Lords-a-Leaping'],
  ['eleventh', 'eleven Pipers Piping'],
  ['twelfth', 'twelve Drummers Drumming']
].freeze

class TwelveDays
  def self.song
    "#{(0..11).map { |num| song_line(num) }.join("\n\n")}\n"
  end

  def self.song_line(num)
    "On the #{GIFTS[num][0]} day of Christmas my true love gave to me: #{gift_list(num)}."
  end

  def self.gift_list(num)
    return PARTRIDGE_STRING if num.zero?

    num.downto(0).with_object([]) do |idx, gifts|
      gifts << GIFTS[idx][1]
    end.join(', ')
  end
end

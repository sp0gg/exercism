# Write your code for the 'Ocr Numbers' exercise in this file. Make the tests in
# `ocr_numbers_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/ocr-numbers` directory.

FEED_CHARS = [
  [' _ ',
   '| |',
   '|_|',
   '   '].join("\n"),

  ['   ',
   '  |',
   '  |',
   '   '].join("\n"),

  [' _ ',
   ' _|',
   '|_ ',
   '   '].join("\n"),

  [' _ ',
   ' _|',
   ' _|',
   '   '].join("\n"),

  ['   ',
   '|_|',
   '  |',
   '   '].join("\n"),

  [' _ ',
   '|_ ',
   ' _|',
   '   '].join("\n"),

  [' _ ',
   '|_ ',
   '|_|',
   '   '].join("\n"),

  [' _ ',
   '  |',
   '  |',
   '   '].join("\n"),

  [' _ ',
   '|_|',
   '|_|',
   '   '].join("\n"),

  [' _ ',
   '|_|',
   ' _|',
   '   '].join("\n")
].freeze

FEED_CHARACTER__NUMBER = Hash.new('?').merge(FEED_CHARS.zip('0'..'9').to_h)

class OcrNumbers
  def self.convert(input)
    validate_input!(input)

    input.lines.each_slice(4).with_object('') do |line, output|
      output << ',' unless output.empty?

      output << FEED_CHARACTER__NUMBER[extract_feed_char!(line)] until line[0].length < 3
    end
  end

  def self.validate_input!(input)
    raise ArgumentError unless [(input.lines.length % 4).zero?,
                                (input.lines[0].chomp.length % 3).zero?].all?
  end

  def self.extract_feed_char!(line)
    0.upto(3).with_object([]) do |idx, feed_char|
      feed_char << line[idx].slice!(0, 3)
    end.join("\n")
  end
end

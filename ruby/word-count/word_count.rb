class Phrase
  def initialize(string)
    scrubbed_string = string.downcase.gsub(/[^a-zA-Z_0-9 ,']/, '')
    unfiltered_words = scrubbed_string.split(/[ ,]/)
    @words = unfiltered_words.delete_if {|word| word.empty?}.map {|word| remove_enclosing_quotes(word)}
  end

  def word_count
    @words.uniq.zip(@words.uniq.map {|word| @words.count(word)}).to_h
  end

  private

  def remove_enclosing_quotes(word)
    word[/^'.*'$/] ? word[1...-1] : word
  end
end

module BookKeeping
  VERSION = 1
end

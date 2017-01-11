class Phrase
  def initialize(string)
    string2 = string.downcase.gsub(/[^a-zA-Z_0-9 ,']/, '')
    puts "string2: #{string2}"
    @words = string2.split(/[ ,]/).delete_if {|word| word.empty?}.map {|word| word[/^'.*'$/] ? word[1...-1] : word}
    puts "words: #{@words}"
  end

  def word_count
    hash = {}
    @words.uniq.each {|word| hash[word] = @words.count(word)}
    hash
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

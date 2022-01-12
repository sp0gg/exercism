=begin
Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
`nucleotide_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nucleotide-count` directory.
=end
require 'set'

NUCS = Set.new(%w[A T C G]).freeze
HIST_HASH = NUCS.zip([0] * 4).to_h.freeze

class Nucleotide
  def self.from_dna(dna)
    raise ArgumentError unless valid?(dna)

    Result.new(dna)
  end

  def self.valid?(dna)
    unique_nucs = Set.new(dna.chars)
    (unique_nucs - NUCS).length == 0
  end
end

class Result
  attr_reader :dna

  def initialize(dna)
    @dna = dna
  end

  def count(nuc)
    dna.count(nuc)
  end

  def histogram
    dna.chars.each_with_object(HIST_HASH.dup) do |nuc, acc|
      acc[nuc] += 1
    end
  end
end

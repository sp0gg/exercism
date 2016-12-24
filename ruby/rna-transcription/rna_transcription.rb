module BookKeeping
  VERSION = 4
end

class Complement
  DNA = 'GCTA'
  RNA = 'CGAU'

  def self.of_dna(dna)
    dna =~ /[^#{DNA}]/ ? '' : dna.tr(DNA, RNA)
  end
end

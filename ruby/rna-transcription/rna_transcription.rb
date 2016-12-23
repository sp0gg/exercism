module BookKeeping
  VERSION = 4
end

class Complement
  DNA_RNA_COMPLEMENT = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(dna)
    return '' unless dna.delete(DNA_RNA_COMPLEMENT.keys.join).size == 0
    dna.chars.map{|nucleotide| DNA_RNA_COMPLEMENT[nucleotide]}.join
  end
end

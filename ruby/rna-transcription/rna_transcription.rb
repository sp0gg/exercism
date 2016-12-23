class Complement
  DNA_RNA = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(dna)
    rna = ''
    dna.chars.each do |nucleotide|
      p DNA_RNA.keys
      unless DNA_RNA.keys.include?(nucleotide)
        rna = ''
        break
      end
      rna << DNA_RNA[nucleotide]
    end
    rna
  end
end

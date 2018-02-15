class Complement
  RNA_Pairs = {
    'C' => 'G',
    'G' => 'C',
    'A' => 'U',
    'T' => 'A'
  }

  def self.of_dna(strand)
    strand.chars.map { |l| RNA_Pairs.has_key?(l) ? RNA_Pairs[l] : (return '') }.join
  end
end

module BookKeeping
  VERSION = 4
end
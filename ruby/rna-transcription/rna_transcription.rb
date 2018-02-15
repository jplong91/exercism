class Complement
  def self.of_dna(strand)
    compl_strand = ''
    nucl_array = strand.split('')
    nucl_array.each do |nucl|
      if nucl == 'C'
        compl_strand << 'G'
      elsif nucl == 'G'
        compl_strand << 'C'
      elsif nucl == 'A'
        compl_strand << 'U'
      elsif nucl == 'T'
        compl_strand << 'A'
      else
        compl_strand = ''
        break
      end
    end
    return compl_strand
  end
end

module BookKeeping
  VERSION = 4
end
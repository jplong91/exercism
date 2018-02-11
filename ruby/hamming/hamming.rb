class Hamming
  def self.compute(a, b)
    unless a.length == b.length
      raise ArgumentError.new
    end
    
    count = 0
    pairs = a.split("").zip(b.split(""))
    pairs.each do |a_let, b_let|
      a_let != b_let ? count += 1 : count
    end
    return count
  end
end

module BookKeeping
  VERSION = 3
end
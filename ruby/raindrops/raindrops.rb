class Raindrops
  def self.convert(n)
    output = fact3_check(n) + fact5_check(n) + fact7_check(n)
    output == "" ? output = n.to_s : output
    return output
  end

  def self.fact7_check(n)
    n % 7 == 0 ? "Plong" : ""
  end

  def self.fact5_check(n)
    n % 5 == 0 ? "Plang" : ""
  end

  def self.fact3_check(n)
    n % 3 == 0 ? "Pling" : ""
  end
end

module BookKeeping
  VERSION = 3
end
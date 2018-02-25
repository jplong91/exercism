class Sieve
  def initialize(limit)
    @numbers = (2..limit).to_a
  end
  def primes
    unless @numbers == []
      i = 0
      multiple = @numbers[i]
      while multiple**2 <= @numbers.last
        @numbers.delete_if { |e| e != multiple && e % multiple == 0 }
        i += 1
        multiple = @numbers[i]
      end
    end
    return @numbers
  end
end

module BookKeeping
  VERSION = 1
end
class Integer
  ROMAN_NUMERALS = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  def to_roman
    output = ''
    number = self
    ROMAN_NUMERALS.reverse_each.each do |num, symb|
      symbol_count = (number / num)
      if symbol_count >= 1
        output += symb * symbol_count
        number -= num * symbol_count
      end
    end
    return output
  end
end

module BookKeeping
  VERSION = 2
end
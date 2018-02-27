class Integer
  ROMAN_NUMERALS = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  def to_roman
    keys = ROMAN_NUMERALS.keys.reverse
    output = ''
    number = self
    while number > 0
      index = 0
      ROMAN_NUMERALS.reverse_each do |key, value|
        if number >= key
          until number < key
            output << value
            number -= key
          end
        elsif number >= key - keys[index + 1] && !ROMAN_NUMERALS.has_key?(key - keys[index + 1])
          p 'here'
          output << ROMAN_NUMERALS[keys[index + 1]]
          number += keys[index + 1]
          output << value
          number -= key
        end
        if number == 0
          break
        end
        index != 5 ? index += 1 : index
      end
    end
    return output
  end
end

module BookKeeping
  VERSION = 2
end
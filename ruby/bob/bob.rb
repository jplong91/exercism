class Bob
  def numeric?
    return true if self =~ /\A\d+\Z/
    true if Float(self) rescue false
  end

  def self.hey(phrase)
    phrase = phrase.tr("0-9", "")
    if phrase == phrase.upcase
      return 'Whoa, chill out!'
    elsif phrase.include?('?')
      return 'Sure.'
    else
      return 'Whatever.'
    end
  end
end
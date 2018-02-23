class Pangram
  def self.pangram?(phrase)
    alphabet = ('a'..'z').to_a
    phrase.downcase.chars.each do |letter|
      alphabet.delete(letter)
    end
    alphabet.empty?
  end
end

module BookKeeping
  VERSION = 6
end
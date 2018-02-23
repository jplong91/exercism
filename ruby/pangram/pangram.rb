class Pangram
  def self.pangram?(phrase)
    alphabet = ('a'..'z').to_a
    phrase.downcase.chars.each do |let|
      if alphabet.include?(let)
        alphabet.delete(let)
      end
    end
    alphabet.empty?
  end
end

module BookKeeping
  VERSION = 6
end
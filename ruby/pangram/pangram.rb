class Pangram
  ALPHABET=('a'..'z')
  def Pangram.pangram?(phrase)
    lower_case_phrase=phrase.downcase
    ALPHABET.all? {|x| lower_case_phrase.include? x}
  end
end


module BookKeeping
  VERSION=4
end
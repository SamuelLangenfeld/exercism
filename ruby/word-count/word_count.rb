class Phrase

  def initialize(phrase)
    @phrase=phrase.downcase
  end

  def word_count
    word_hash={}
    @phrase.split(/[[^']&&[\W\s]]+/).each do |word|
      if /'\w+'/=~ word
        size=word.size
        word=word[1, size-2]
      end
      if word_hash[word].nil?
        word_hash[word]=1
      else
        word_hash[word]+=1
      end
    end
    return word_hash
    
  end
end

module BookKeeping
  VERSION= 1
end
require 'pry'
class PigLatinizer

  def initialize
  end

  def consonant_initial(word, index)
    word[index..-1] + word[0..index-1] + "ay"
  end

  def vowel_initial(word)
    word + "way"
  end

  def get_index(word)
    vowel_index = 0
    word.split('').each_with_index do |c, i|
      if c.match(/[aeiouAEIOU]/)
        return vowel_index = i
      end
    end
  end

  def piglatinize(phrase)
    words = phrase.split
    result = []
    words.each do |word|
      if word[0].match(/[aeiouAEIOU]/)
        result << vowel_initial(word)
      else
        result << consonant_initial(word, get_index(word))
      end
    end
    result.join(' ')
  end

end # end class PigLatinizer

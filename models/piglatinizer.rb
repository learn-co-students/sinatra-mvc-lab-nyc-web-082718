class PigLatinizer
  attr_reader :words

  def initialize
    @words = words
  end

   def piglatinize(words)
      words_array = words.split(" ")

      vowels = "aeiouAEIOU"
      consonant = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"

      piglatin = words_array.map do |word|
        if vowels.include?(word[0])
          word + "way"
        elsif consonant.include?(word[0]) && consonant.include?(word[1]) && consonant.include?(word[2])
          word[3..-1] + word[0..2] + "ay"
        elsif consonant.include?(word[0]) && consonant.include?(word[1])
          word[2..-1] + word[0..1] + "ay"
        elsif consonant.include?(word[0])
          word[1..-1] + word[0] + "ay"
        else
          word
        end
      end
     piglatin.join(" ")
   end

end

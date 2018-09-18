require 'pry'
class PigLatinizer

  def piglatinize(text)
    words_array = text.split(" ")
    pig_latin_words = words_array.map do |word|
      if word[0].match(/[aeiouAEIOU]/)
        word +'way'
      else
        vowel_index = word.index(/[aeiouAEIOU]/)
        first_half = word[0..vowel_index-1]
        second_half = word[vowel_index..-1]
        second_half + first_half + 'ay'
      end
    end
    pig_latin_words.join(" ")
  end




end

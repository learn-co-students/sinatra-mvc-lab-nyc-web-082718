require 'pry'

class PigLatinizer

  attr_accessor :word

  def initialize
   @word = word
  end

  def piglatinize(word)

    vowels = "aeiouAEIOU"

    final_arr = word.split(" ").map do |word|

      if vowels.include?(word[0])
       pig_latin = word.split('')
       pig_latin << "way"
       pig_latin.join
     elsif vowels.include?(word[1])
       split_word = word.split('')
       pig_latin = split_word.rotate
       pig_latin << "ay"
       pig_latin.join
     elsif vowels.include?(word[2])
       split_word = word.split('')
       pig_latin = split_word.rotate.rotate
       pig_latin << "ay"
       pig_latin.join
     else
       split_word = word.split('')
       pig_latin = split_word.rotate.rotate.rotate
       pig_latin << "ay"
       pig_latin.join
     end
   end

   final_arr.join(" ")
 end

end

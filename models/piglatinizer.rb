require 'pry'
class PigLatinizer
  attr_accessor :text

  def initializea(text)
    @text = text
  end

  def piglatinizes(string)
    i = nil
    array = string.split('')
    if ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].include?(array[0])
      word = array.join('') + "way"
    else
    array.each_with_index do |letter, index|
    if ['a', 'e', 'u', 'i', 'o', 'u'].include?(array[index])
       i = index
       break
    end
   end
    word = array.slice(i, array.length).join('') + array[0..i - 1].join('') + "ay"
  end
  word
  end


def piglatinize(text)
  new_array = []
  array = text.split(' ')
  array.each do |word|
  new_array << piglatinizes(word)
  end
 new_array.join(' ')
end



end

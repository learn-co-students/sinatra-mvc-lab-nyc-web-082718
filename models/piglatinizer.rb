class PigLatinizer

  def piglatinize(phrase)
    words = phrase.split(' ')
    words.map do |word|
      vowels = ['a', 'e', 'i', 'o', 'u']
      if word.length == 1 || vowels.include?(word[0].downcase)
        word + 'way'
      else
        syllable = []
        copy = word.split('')
        while !vowels.include?(copy.first) do
          syllable << copy.shift
        end
        copy.join('') + syllable.join('') + 'ay'
      end
    end.join(' ')
  end
end

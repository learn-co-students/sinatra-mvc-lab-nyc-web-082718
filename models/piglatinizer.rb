class PigLatinizer

  def piglatinize(text)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = text.split(' ')
    result = []

    words.each_with_index do |word, i|
      translation = ''
      qu = false
      if word.length == 1
        translation = word + 'way'
        result << translation
      elsif vowels.include? word[0].downcase
        translation = word + 'way'
        result << translation
      else
        word = word.split('')
        count = 0
        word.each_with_index do |char, index|
          if vowels.include? char
            if char == 'u' and translation[-1] == 'q'
              qu = true
              translation = words[i][count + 1..words[i].length] + translation + 'uay'
              result << translation
              next
            end
            break
          else
            if char == 'q' and word[i+1] == 'u'
              qu = true
              translation = words[i][count + 2..words[i].length] + 'quay'
              result << translation
              next
            else
              translation += char
            end
            count += 1
          end
        end
        if not qu
          translation = words[i][count..words[i].length] + translation + 'ay'
          result << translation
        end
      end
    end
    result.join(' ')
  end
end

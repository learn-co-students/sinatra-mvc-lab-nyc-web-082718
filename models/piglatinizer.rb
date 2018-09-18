class PigLatinizer

  def piglatinize(string)
    new_array = []

    string.split.each do |word|
      new_array << piglatinize_word(word)
    end
    # binding.pry
    new_array.join(" ")
  end

  def piglatinize_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    string_array = word.downcase.split("")
    moved_chars = ""
    # binding.pry


    if vowels.include?(string_array[0])
      return "#{word}way"
    else !vowels.include?(string_array[0])
      until vowels.include?(string_array[0])
        # binding.pry
        x = string_array.shift
        moved_chars << x
      end
    end
    string_array << moved_chars
    string_array << "ay"
    string_array.join("")
  end

end

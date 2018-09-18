class PigLatinizer
  def piglatinize(text)
    words_arr = text.split(" ")
    latin_arr = words_arr.map do |w|
      if /[aeiouAEIOU]/.match(w[0])
        w + "way"
      else
        cons = w.scan(/^[^aeiou]+[aeiou]/).first[0..-2]
        rest = w[cons.length..-1]
        rest + cons + "ay"
      end
    end
    latin_arr.join(" ")
  end
end

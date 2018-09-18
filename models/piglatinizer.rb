class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def latinizer
    letters = text.split("")
    ay = ["a", "y"]
    ay.unshift(letters.shift)
    ay.each do |letter|
      letters << letter
    end
    letters
  end

end

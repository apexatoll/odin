class String
  def is_a_letter?
    self.match?(/^\w$/)
  end
end

def caesar_cipher(string, shift)
  string.chars.map do |char|
    if char.is_a_letter?
      shifted = char.ord + shift
      shifted -= 26 until shifted.chr.is_a_letter?
      shifted.chr
    else
      char
    end
  end.join
end

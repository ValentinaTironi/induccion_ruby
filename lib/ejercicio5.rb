module Ejercicio5
  def self.swapcase(string)
    str = ''
    string.each_char do |c|
      c == c.downcase ? str += c.upcase : str += c.downcase
    end
    str
  end
end

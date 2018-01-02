module Ejercicio3
  def self.include?(array, object)
    array.each { |element| return true if element == object }
    false
  end
end

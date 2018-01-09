module Element
  def self.biggest(*elements)
    biggest = elements.first
    elements.each do |element|
      biggest = element if element.length > biggest.length
    end
    biggest
  end
end

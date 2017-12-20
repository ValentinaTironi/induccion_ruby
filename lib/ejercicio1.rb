module Element
  def self.biggest(*elements)
    biggest = elements
    if elements.respond_to?('each')
      biggest = elements.first
      elements.each do |param|
        param.length > biggest.length ? biggest = param : biggest
      end
    end
    biggest
  end
end

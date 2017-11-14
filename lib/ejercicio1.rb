require 'active_support'
require 'active_support/core_ext'
# = ejercicio1.rb
class Object
  attr_accessor :elements

  def biggest(*elements)
    return 0 if elements.blank?
    return 'Invalid' unless elements[0].respond_to?('length')
    biggest = elements
    if elements.respond_to?('each')
      biggest = elements[0]
      elements.each do |param|
        param.length > biggest.length ? biggest = param : biggest
      end
    end
    biggest.to_s
  end
end

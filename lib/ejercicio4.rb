module Alternative
  def self.take(array, n)
    return array if n >= array.length
    array_new = []
    n.times do |i|
      array_new.push(array[i])
    end
    array_new
  end
end

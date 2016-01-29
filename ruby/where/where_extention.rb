class Array
  def where(input_array)
    output_array = []
    input_array.each do |k, v|
      output_array << self.select { |hash| hash[k] == v }
    end
    return output_array.flatten
  end
end

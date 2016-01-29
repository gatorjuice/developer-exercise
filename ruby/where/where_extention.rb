class Array
  # def where(input_array)
  #   output_array = []
  #   input_array.each do |k, v|
  #     output_array << self.select { |hash| hash[k] == v }
  #   end
  #   return output_array.flatten
  # end
  
  # def where(input_array)
  #   puts input_array
  #   output_array = []
    
  #   each do |hash|
    
  #   output_array << hash if input_array == hash
    
  #   end
    
  #   puts output_array
  #   output_array
  # end
  
  # def where(options)
  #   output_array = []
  #   each do |hash|
  #   if hash.has_key?(options)
  #     output_array << hash
  #   end
  #   end
  #   puts output_array
  #   output_array
  # end
  
  # def where(options)
  #   search_keys = options.keys
  #   search_values = options.values

  #   output_array = []
  #   each do |hash|
  #     if hash.has_key?.any?(search_keys) && hash.has_value?.any?(search_values)
  #       output_array << hash
  #     end
  #   end
  # end
  
  def where(options)
    name = options[:name] || nil
    quote = options[:quote] || nil
    rank = options[:rank] || nil
    title = options[:title] || nil
    select { |hash| hash[:name] == name }
  end
  
end

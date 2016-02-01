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
  
  # def where(options)rank
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

  # def where(input_hash)
  #   output_array = []
  #   input_hash.each_key do |k|
  #     self.each do |hash|
  #       output_array << hash if self.include?(hash[k])
  #     end
  #   end
  #   p output_array
  #   output_array
  # end

  def where(options)
    return_array = []
    options.each do |option, value|
      self.each do |list_item|

          if list_item[value].class != String && list_item[option] =~ value
            return_array << list_item
          elsif list_item[option] == value
            return_array << list_item
          end

      end
    end
    return_array
  end

end

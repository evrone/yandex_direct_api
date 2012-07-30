class Array
  def camelize_each
    array = []
    self.each do |item|
      value = case item
        when Hash
          item.camelize_keys
        when Array
          item.camelize_each
        else
          item
      end
      array << value
    end
    return array
  end
end

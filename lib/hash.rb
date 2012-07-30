class Hash
  def camelize_keys
    hash = {}
    self.each do |k, v|
      key = k.to_s.to_camelcase
      value = case v
        when Hash then v.camelize_keys
        when Array then v.camelize_each
        else v
      end
      hash.store(key, value)
    end
    return hash
  end

  def underscore_keys
    hash = {}
    self.each do |k, v|
      key = k.to_s.to_underscore.to_sym
      value = case v
        when Hash then v.underscore_keys
        when Array then v.map(&:underscore_keys)
        else v
      end
      hash.store(key, value)
    end
    return hash
  end
end

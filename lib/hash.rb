class Hash
  def delete_value(value)
    delete_if {|k, v| v == value}
  end

  def plus!(hash)
    merge!(hash) { |k, v1, v2| v1 + v2 }
  end

  def minus!(hash)
    merge!(hash) { |k, v1, v2| v1 - v2 }
  end
end

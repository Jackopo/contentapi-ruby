class Hash
  # File merb/core_ext/hash.rb, line 166
  def nested_symbolize_keys!
    
    items = {}
    
    each do |k,v|
      sym = k.respond_to?(:to_sym) ? k.to_sym : k
      items[sym] = Hash === v ? v.nested_symbolize_keys! : v
      delete(k) unless k == sym
    end
    items
  end

  def nested_stringify_keys!
    each do |k,v|
      s = k.respond_to?(:to_s) ? k.to_s : k
      self[s] = Hash === v ? v.nested_stringify_keys! : v
      delete(k) unless k == s
    end
    self
  end

end

# This version works with both hashes and arrays
def recursively_symbolize_keys!(obj)
  case obj
  when Array
    obj.inject([]){|res, val|
      res << case val
      when Hash, Array
        recursively_symbolize_keys!(val)
      else
        val
      end
      res
    }
  when Hash
    obj.inject({}){|res, (key, val)|
      nkey = case key
      when String
        key.to_sym
      else
        key
      end
      nval = case val
      when Hash, Array
        recursively_symbolize_keys!(val)
      else
        val
      end
      res[nkey] = nval
      res
    }
  else
    obj
  end
end


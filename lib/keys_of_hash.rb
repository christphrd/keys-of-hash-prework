require "pry"

class Hash
  def keys_of(*arguments)
    values_array = [*arguments]
    keys_array = values_array.map do |e|
      self.each do |k,v|
        binding.pry
        if v == e
          binding.pry
          k
        end
      end
    end
  end
end

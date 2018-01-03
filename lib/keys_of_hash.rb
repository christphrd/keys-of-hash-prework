require "pry"

class Hash
  def keys_of(*arguments)
    values_array = [*arguments]
    binding.pry
    values_array.map do |e|
      binding.pry
      self.map do |k,v|
        binding.pry
        if v == e
          binding.pry
          k
        end
      end
    end
  end
end

require "pry"

class Hash
  def keys_of(*arguments)
    values_array = [*arguments]
    values_array.map do |e|
      self.map do |k,v|
        if v == e
          k
        end
      end
    end
  end.flatten
end

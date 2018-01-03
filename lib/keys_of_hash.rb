require "pry"

class Hash
  def keys_of(*arguments)
    values_array = [*arguments]
    keys_array = []
    values_array.each do |e|
      self.each do |k,v|
        if v == e
          keys_array << k
        end
      end
    end
  end
end

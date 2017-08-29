module Findable 
  module ClassMethods
    def find_by_name(name)
      self.all.detect {|val| val.name == name}
    end
  end
end

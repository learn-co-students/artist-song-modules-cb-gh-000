module Findable
  module Classmethods
    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end
  end
  module Instancemethods

  end
end

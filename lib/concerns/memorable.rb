module Memorable
  module ClassMethods
  # do not use self key word in the names
  # of methods defined in modules
    def count
      self.all.count
    end

    def reset_all
      self.all.clear
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end

end

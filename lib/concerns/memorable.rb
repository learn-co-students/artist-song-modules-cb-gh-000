# It is a common practice to create a folder called concerns that holds modules
# that will be used across classes in an object oriented Ruby project.

module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end

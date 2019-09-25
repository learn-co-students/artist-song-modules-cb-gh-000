module Memorable
  #class methods, use extend
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  #instance methods, use include
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end

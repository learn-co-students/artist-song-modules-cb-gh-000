module Findable

  def find_by_name(name)
    ObjectSpace.each_object(Class) do |x| #Each class that is instantiated
      if x.class == self.class and x.name == self.name  #x.name will return class name
        return x.all.find {|x| x.name == name} #eg. Song.all
      end
    end

  end

end

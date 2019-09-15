module Findable

  def find_by_name(name)
    self.all.detect {|entity| entity.name == name}
  end

end

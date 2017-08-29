module Findable
  def find_by_name(name)
    self.all.detect do |item|
      item.name == name
    end
  end
end

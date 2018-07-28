module Memorable

  def reset_all
    self.all.clear
  end

  def self.count
    @@artists.count
  end

end

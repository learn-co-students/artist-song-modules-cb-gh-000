module Paramable
  #instance method
  def to_param
   name.downcase.gsub(' ', '-')
  end
end

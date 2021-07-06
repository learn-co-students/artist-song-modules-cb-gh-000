require 'pry'

class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable
  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end
end

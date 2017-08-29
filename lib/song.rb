require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Findable::Classmethods
  extend Memorable::Classmethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  @@songs = []
  def artist=(artist)
    @artist = artist
  end
  def self.all
    @@songs
  end
end

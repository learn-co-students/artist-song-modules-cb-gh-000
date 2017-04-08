require 'pry'
require_relative './concerns/memorable.rb'
require_relative './concerns/paramable.rb'
require_relative './concerns/findable.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  @@songs = []

  def initialize
    super
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end

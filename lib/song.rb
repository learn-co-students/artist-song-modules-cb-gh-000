require 'pry'
require_relative '../lib/concerns/memorable'

class Song
  extend Memorable
  include Paramable
  extend Findable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end

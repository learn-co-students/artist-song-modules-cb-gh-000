require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'

class Song
  extend Memorable, Findable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  # def self.reset_all
  #   @@songs.clear
  # end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  # def self.count
  #   self.all.count
  # end

  def self.all
    @@songs
  end
end

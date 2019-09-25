require 'pry'

class Artist
  include Paramable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super #call the initialize method in a base class
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end

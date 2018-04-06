require 'pry'

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    # binding.pry
  song_array = self.songs.all
  artists = song_array.each { |s| s.artist}
  artists.size

  end

  def all_artist_names
    # binding.pry
    self.artists.all

  end
end

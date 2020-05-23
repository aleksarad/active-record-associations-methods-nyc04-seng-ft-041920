require_relative 'song.rb'
require_relative 'genre.rb'

class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.first.genre
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    #return the number of genres associated with the artist
    self.genres.count
  end
end

# chunli = Song.create(name:"Chun-Li")
# superbass = Song.create(name:"Superbass")
# hardwhite = Song.create(name:"Hard White")

# nicki = Artist.create(name:"Nicki Minaj")

# hip_hop = Genre.create(name:"Hip-hop")
# pop = Genre.create(name:"Pop")


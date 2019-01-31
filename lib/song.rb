class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    uniq_genres = self.genres
    hash_genre = {}
    uniq_genres.each do |genre|
      count = 0
      @@genres.each do |item|
        if item == genre
          count += 1
        end
      end
      hash_genre[genre] = count
    end
    hash_genre
  end

  def self.artist_count
    uniq_artists = self.artists
    hash_artists = {}
    uniq_artists.each do |artist|
      count = 0
      @@artists.each do |item|
        if item == artist
          count += 1
        end
      end
      hash_artists[artist] = count
    end
    hash_artists
  end





end

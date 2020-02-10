class Song
  attr_accessor :name, :artist, :genre

  @@all= []
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self
    @@genres << genre
    @@artists << artist
  end

  def Song.count
    return @@count
  end

  def Song.genres
    return @@genres.uniq
  end

  def Song.artists
    return @@artists.uniq
  end

  def Song.genre_count
    hash = {}
    @@all.each { |s|
      if hash[s.genre.to_sym]
        hash[s.genre.to_sym] += 1
      else
        hash[s.genre.to_sym] = 1
      end
    }
    return hash
  end

  def Song.artist_count
    hash = {}
    @@all.each { |s|
      if hash[s.artist.to_sym]
        hash[s.artist.to_sym] += 1
      else
        hash[s.artist.to_sym] = 1
      end
    }
    return hash
  end
end
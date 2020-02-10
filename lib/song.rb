class Song
  attr_accessor :name, :artist, :genre

  @@all= []
  @@count = 0
  @@genres = []
  @@artists = []
  @@genres_stat = {}
  @@artists_stat = {}

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
    @@all.each { |s|
      if @@genres_stat[s.genre.to_sym]
        @@genres_stat[s.genre.to_sym] += 1
      else
        @@genres_stat[s.genre.to_sym] = 1
      end
    }
    return @@genres_stat
  end

  def Song.artist_count
    @@all.each { |s|
      if @@artists_stat[s.artist.to_sym]
        @@artists_stat[s.artist.to_sym] += 1
      else
        @@artists_stat[s.artist.to_sym] = 1
      end
    }
    return @@artists_stat
  end
end
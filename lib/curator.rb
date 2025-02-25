class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def find_photograph_by_id(id)
    @photographs.find do |photograph|
      photograph.id == id
    end
  end

  def find_photographs_by_artist(artist)
    @photographs.find_all do |photograph|
      photograph.artist_id == artist.id
    end
  end

  def photographs_taken_by_artist_from(country)
    artist_country = @artists.find_all do |artist|
      artist.country == country
    end
    artist_country.map do |artist|
      artist.id
      @photographs.find_all do |photograph|
        photograph.artist_id == artist.id
      end
    end.flatten
  end
end

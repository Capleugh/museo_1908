class Artist
  attr_reader :id, :name, :born, :died, :country

  def initialize(artist_attr)
    @id = artist_attr[:id]
    @name = artist_attr[:name]
    @born = artist_attr[:born]
    @died = artist_attr[:died]
    @country = artist_attr[:country]
  end
end

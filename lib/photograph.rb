class Photograph
  attr_reader :id, :name, :artist_id, :year

  def initialize(photo_attr)
    @id = photo_attr[:id]
    @name = photo_attr[:name]
    @artist_id = photo_attr[:artist_id]
    @year = photo_attr[:year]
  end

end

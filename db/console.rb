require_relative('../models/artist.rb')
require_relative('../models/album.rb')
require('pry')

artist1 = Artist.new({"name" => "The Corrs"})


artist1.save()

album1 = Album.new(
  {"name" => "Borrowed Heaven",
  "genre" => "pop",
  "artist_id" => artist1.id}
)
album2 = Album.new(
  {"name" => "Talk on Corners",
  "genre" => "pop",
  "artist_id" => artist1.id}
)

album1.save()
album2.save()

# p Artist.display_albums_by_artist(7)
p Album.artist(5)
# p Artist.all()
# p Album.all()

binding.pry
nil

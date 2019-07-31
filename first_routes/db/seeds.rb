# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'LeBron')
User.create(username: 'Curry')
User.create(username: 'Durant')
User.create(username: 'Harden')
User.create(username: 'Westbrook')

Artwork.create(title: 'Dunk Contest Winner', image_url: 'www.dunk.com', artist_id: 1)
Artwork.create(title: 'Splash City BAby', image_url: 'www.gsw.com', artist_id: 2)
Artwork.create(title: 'I <3 OKC 4ever', image_url: 'www.snakes.com', artist_id: 3)

ArtworkShare.create(artwork_id: 1, viewer_id: 4)
ArtworkShare.create(artwork_id: 2, viewer_id: 5)
ArtworkShare.create(artwork_id: 3, viewer_id: 4)
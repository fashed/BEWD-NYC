# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.create(url:"http://www.clancbs.com/wp-content/uploads/2015/11/the-modern-interior-design-within-modern-home-interior-design-modern-art-deco-interior-design-what-is-modern-interior-design-style-interior-picture-modern-interior-design-812x472.jpg",caption:"red home")
Photo.create(url:"http://www.casafehomes.org/wp-content/uploads/2015/11/interior-design.jpg",caption:"red home")
Photo.create(url:"http://wallpaperswide.com/download/interior_design-wallpaper-1366x768.jpg",caption:"walnut home")
Photo.create(url:"http://synergycustombuilders.com/wp-content/uploads/2012/03/Interior-Living-Saces.jpg",caption:"concrete and wood home")

u = User.create(name: "vincent", email: "trivett@gmail.com")
u.photos.create(url:"http://www.casafehomes.org/wp-content/uploads/2015/11/interior-design.jpg",caption:"red home")
u.photos.create(url:"http://wallpaperswide.com/download/interior_design-wallpaper-1366x768.jpg",caption:"walnut home")


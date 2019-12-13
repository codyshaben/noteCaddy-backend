# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Note.destroy_all
Hole.destroy_all
PlayerCourse.destroy_all
Course.destroy_all
Player.destroy_all

puttmaster = Player.create(name: "Puttmaster1")
phil = Player.create(name: "Phil")

ballyneal = Course.create(name: "Ballyneal G.C.", location: "Holyoke")
castle_pines = Course.create(name: "Castle Pines G.C.", location: "Castle Rock")
cherry_hills = Course.create(name: "Cherry Hills C.C.", location: "Cherry Hills Village")
colorado_gc = Course.create(name: "Colorado G.C.", location: "Parker")
sanctuary = Course.create(name: "Sanctuary", location: "Sedalia")
broadmoar = Course.create(name: "The Broadmoar G.C", location: "Colorado Springs")
maroon_creek = Course.create(name: "Maroon Creek Club", location: "Aspen")
fossil_trace = Course.create(name: "Fossil Trace", location: "Golden")
red_sky_ranch = Course.create(name: "Red Sky Ranch & G.C.", location: "Wolcott")
roaring_fork = Course.create(name: "Roaring Fork Club", location: "Basalt")
ravenna = Course.create(name: "The Club At Ravenna", location: "Littleton")
cc_of_the_rockies = Course.create(name: "C.C. Of The Rockies", location: "Edwards")
frost_creek = Course.create(name: "Frost Creek G.C.", location: "Eagle")
aspend_glen_club = Course.create(name: "Aspen Glen Club", location: "Carbondale")
redlands_mesa = Course.create(name: "The Club At Redlands Mesa", location: "Grand Junction")
catamount = Course.create(name: "Catamount Ranch & Club", location: "Steamboat Springs")
denver_cc = Course.create(name: "Denver C.C.", location: "Denver")
the_ridge = Course.create(name: "The Ridge At Castle Pines North", location: "Castle Pines")
broadmoar_west = Course.create(name: "The Broadmoar G.C. (West)", location: "Colorado Springs")
cordillera = Course.create(name: "The Club At Cordillera (Valley)", location: "Edwards")

ballyneal1 = Hole.create(yards: 382, par: 4, handicap: 9, course: ballyneal, tee: 1)
ballyneal2 = Hole.create(yards: 490, par: 4, handicap: 3, course: ballyneal, tee: 2)
ballyneal3 = Hole.create(yards: 145, par: 3, handicap: 17, course: ballyneal, tee: 3)
ballyneal4 = Hole.create(yards: 573, par: 5, handicap: 5, course: ballyneal, tee: 4)
ballyneal5 = Hole.create(yards: 165, par: 3, handicap: 13, course: ballyneal, tee: 5)
ballyneal6 = Hole.create(yards: 480, par: 4, handicap: 1, course: ballyneal, tee: 6)
ballyneal7 = Hole.create(yards: 352, par: 4, handicap: 15, course: ballyneal, tee: 7)
ballyneal8 = Hole.create(yards: 515, par: 5, handicap: 7, course: ballyneal, tee: 8)
ballyneal9 = Hole.create(yards: 362, par: 4, handicap: 11, course: ballyneal, tee: 9)
ballyneal10 = Hole.create(yards: 509, par: 4, handicap: 2, course: ballyneal, tee: 10)
ballyneal11 = Hole.create(yards: 200, par: 3, handicap: 18, course: ballyneal, tee: 11)
ballyneal12 = Hole.create(yards: 375, par: 4, handicap: 12, course: ballyneal, tee: 12)
ballyneal13 = Hole.create(yards: 510, par: 4, handicap: 4, course: ballyneal, tee: 13)
ballyneal14 = Hole.create(yards: 362, par: 4, handicap: 16, course: ballyneal, tee: 14)
ballyneal15 = Hole.create(yards: 237, par: 3, handicap: 14, course: ballyneal, tee: 15)
ballyneal16 = Hole.create(yards: 546, par: 5, handicap: 6, course: ballyneal, tee: 16)
ballyneal17 = Hole.create(yards: 481, par: 4, handicap: 8, course: ballyneal, tee: 17)
ballyneal18 = Hole.create(yards: 463, par: 4, handicap: 10, course: ballyneal, tee: 18)

PlayerCourse.create(player: puttmaster, course: ballyneal)

Note.create(content: "this first hole is a doosy", hole: ballyneal1)
Note.create(content: "little more manageable hole", hole: ballyneal2)
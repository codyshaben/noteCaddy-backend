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

ballyneal = Course.create(name: "Ballyneal G.C.", location: "Holyoke", image: "https://www.ballyneal.com/wp-content/uploads/2015/01/new-hole-7-a.jpg")
castle_pines = Course.create(name: "Castle Pines G.C.", location: "Castle Rock", image: "http://www.nicklaus.com/design/assets/images/castlepines/gallery/3.jpg")
cherry_hills = Course.create(name: "Cherry Hills C.C.", location: "Cherry Hills Village", image: "https://daegroupllc.com/wp-content/uploads/2018/07/cherry-hills-country-club-no-9-banner-1-1080x360.jpg")
colorado_gc = Course.create(name: "Colorado G.C.", location: "Parker", image: "https://logos.bluegolf.com/coloradogc/cover.jpg")
sanctuary = Course.create(name: "Sanctuary", location: "Sedalia", image: "https://www.top100golfcourses.com/img/courses/sanctuary_92d02a6a-f9ec-4111-82c3-cacbafdf20f8.jpg")
broadmoar = Course.create(name: "The Broadmoar G.C", location: "Colorado Springs", image: "https://media.golfdigest.com/photos/578d024c72aa79aa38c6073c/master/w_3000,h_2250,c_limit/Denver-guide-The-Broadmoor-East-Course.jpg")
maroon_creek = Course.create(name: "Maroon Creek Club", location: "Aspen", image: "https://cdn.allsquaregolf.com/pictures/pictures/000/033/032/original/maroon_creek_club_golf_course_cover_picture.jpeg")
fossil_trace = Course.create(name: "Fossil Trace", location: "Golden", image: "https://www.epoquegolden.com/55-plus-community-lifestyle-articles-news/wp-content/uploads/2018/05/Fossil-Trace-1024x366.jpg")
red_sky_ranch = Course.create(name: "Red Sky Ranch & G.C.", location: "Wolcott", image: "http://www.redskygolfclub.com/RedSkyGolfBase/wrap/theme2/images/hero.packages.jpg")
roaring_fork = Course.create(name: "Roaring Fork Club", location: "Basalt", image: "http://www.labauvegolf.com/portals/mikelabauve/CO_RF_16_GTFRST_N_1014.jpg")
ravenna = Course.create(name: "The Club At Ravenna", location: "Littleton", image: "https://cdn.allsquaregolf.com/pictures/pictures/000/033/011/large/the_club_at_ravenna_cover_picture.jpeg")
cc_of_the_rockies = Course.create(name: "C.C. Of The Rockies", location: "Edwards", image: "http://www.nicklaus.com/design/assets/images/ccrockies/gallery/3.jpg")
frost_creek = Course.create(name: "Frost Creek G.C.", location: "Eagle", image: "https://i0.wp.com/www.frostcreek.com/wp-content/uploads/2014/05/golf.jpg?fit=960%2C540")
aspend_glen_club = Course.create(name: "Aspen Glen Club", location: "Carbondale", image: "https://www.clubcorp.com/var/ezflow_site/storage/images/media/clubs/aspen-glen-media-folder/images/redesign-website-images/aspenglen_main_golf_1/12959084-1-eng-US/AspenGlen_Main_Golf_1.jpg")
redlands_mesa = Course.create(name: "The Club At Redlands Mesa", location: "Grand Junction", image: "https://www.visitgrandjunction.com/sites/default/master/files/styles/profile_page_slide_640x480/public/zzdata-2301_720x480.jpg?itok=A-FAIJcs")
catamount = Course.create(name: "Catamount Ranch & Club", location: "Steamboat Springs", image: "https://www.catamountranchclub.com/SiteDesign/Images2/editable_img.aspx")
denver_cc = Course.create(name: "Denver C.C.", location: "Denver", image: "https://tclf.org/sites/default/files/thumbnails/image/DenverCountryClub_BrianKThomson_2014-05.jpg")
the_ridge = Course.create(name: "The Ridge At Castle Pines North", location: "Castle Pines", image: "https://www.golfforeit.com/wp-content/uploads/2016/09/Castle-Pines-11th-water-600x400.jpg")
broadmoar_west = Course.create(name: "The Broadmoar G.C. (West)", location: "Colorado Springs", image: "http://colorado.twoguyswhogolf.com/reviews/broadmoorwest/Broadmoor-West_5.jpg")
cordillera = Course.create(name: "The Club At Cordillera (Valley)", location: "Edwards", image: "https://jeffreysrealestate.files.wordpress.com/2013/04/cordilleria-valley-cousre.jpg")


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
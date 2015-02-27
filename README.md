[![Build Status](https://travis-ci.org/CharlesMilam/tatalog.svg?branch=master)](https://travis-ci.org/CharlesMilam/tatalog)
#Tatalog - organize your ink
**Project Overview**

Organize your ink. Upload an image of your tattoo. Add information, such as the artist, the shop where you got the tattoo, or the inspiration behind your tattoo. Browse other user's tattoos. Tag your favorites. View most favorited tattoos, artists, and shops.This was my capstone individual project as a student at MakerSquare.

#Technology
###Server side: 
  * Ruby on Rails 
  * SQLite for test/development, Postgresql for deployment to Heroku
  * BCrypt for secure password storage
  * Simple_Form for ease in form creation
  * Paperclip for image upload to S3, and creation of thumbnails
  * Figaro for aid in managing environmnt variables.

###Client side:
  * Foundation 5, CSS framework with web responsiveness built in
  * SCSS
  * jQuery

###API
  * Amazon S3 for image storage

#User Stories

A User can...

* Sign up and sign in
* Create/view/edit/remove tattoos, tattoo artists, and tattoo shops.
* Favorite there own tattoos.
* Browse other users tattoos, and favorite them

#Todos

* Allow user to create catgory "buckets" to store tattoo ideas.
* Generation of "stats", top tattoos/artists/shops, &c.
* Ability for users to review artists/shops.

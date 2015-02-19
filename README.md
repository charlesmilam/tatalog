Tatalog - organize your ink
Project Overview

Organize your ink. Upload an image of your tattoo. Add information, such as the artist, the shop where you got the tattoo, or the inspiration behind your tattoo. Browse other user's tattoos. Tag your favorites. View most favorited tattoos, artists, and shops.This was my capstone individual project as a student at MakerSquare.

Technology

*Server side: 
  *Ruby on Rails 
  *SQLite for test/development, Postgresql for deployment to Heroku
  *BCrypt for secure password storage
  *Simple_Form for ease in form creation
  *Paperclip for image upload to S3, and creation of thumbnails
  *Figaro for aid in managing environmnt variables.

*Client side:
  *Foundation 5
  *SCSS
  *jQuery

User Stories

A User can...

Sign up and sign in
Create/read/update/destroy lists and list items
Make lists private for their own use or public for viewing by all users
Share lists (private or public) with other users to read/update
Search public lists for keywords
Potential Additions

Extend search functionality to look through list items as well as titles
Implement jQuery UI features for lists, such as the accordion style
Create user alerts for new public lists that contain specific keywords
Build a mobile app
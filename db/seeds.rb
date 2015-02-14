# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  ["SusanO", "susano@example.com", "abc123"],
  ["Chuck", "chuck@example.com", "abc123"],
  ["Grace", "grace@example.com", "abc123"],
  ["Alli", "alli@example.com", "abc123"],
  ["Digby", "digby@example.com", "abc123"],
  ["Whittie", "whittie@example.com", "abc123"]
]

tattoo_list = [
  [1, "Susan Tat 1", 1, "2012-3-3", 1, "why not?"],
  [1, "Susan Tat 2", 2, "2013-3-3", 1, "why not?"],
  [1, "Susan Tat 3", 3, "2014-3-3", 1, "why not?"],
  [2, "Chuck Tat 1", 3, "2012-3-3", 2, "why not?"],
  [2, "Chuck Tat 2", 2, "2013-3-3", 2, "why not?"],
  [2, "Chuck Tat 3", 1, "2014-3-3", 2, "why not?"],
  [3, "Grace Tat 1", 3, "2012-3-3", 3, "why not?"],
  [4, "Alli Tat 1", 2, "2012-3-3", 2, "why not?"],
  [5, "Digby Tat 1", 1, "2012-3-3", 1, "why not?"],
  [6, "Whittie Tat 1", 3, "2012-3-3", 2, "why not?"]
]

artist_list = [
  ["Max Ink", "Maxxer", "max@example.com", 1, "http://example.com/max"],
  ["John Gray", "Johnny", "john@example.com", 1, "http://example.com/john"],
  ["Willliam Newschool", "Billy", "billy@example.com", 1, "http://example.com/billy"]
]

shop_list = [
  ["Tats-R-Us", "1313 Mockingbird Ln", "Austin", "TX", "78758", "http://tatsrus.com"],
  ["Tats4U", "1212 Redbird St", "Austin", "TX", "78701", "http://tats4u.com"],
  ["Ink or Die", "1111 Bluejay Ave", "Austin", "TX", "78704", "http://inkdie.com"]
]

favorite_list = [
  [1, 1],
  [2, 1],
  [3, 1],
  [3, 2],
  [4, 3]
]

tattoo_pic_list = [
  [1, "description tat 1", "https://36.media.tumblr.com/a849db1d01b4c3fe9ba36dc56ad32b28/tumblr_ngjgqoumSG1sgl33ko1_500.jpg"],
  [2, "description tat 2", "https://40.media.tumblr.com/711628fc8dd25df9a92b0b1a69e2588e/tumblr_mpn0cf38zq1r5cuu2o1_500.jpg"],
  [3, "description tat 3", "https://40.media.tumblr.com/f7e7303f5c8604b8fb66c377e6251f36/tumblr_nbfw81zV4G1rhxqo6o1_500.png"],
  [4, "description tat 4", "http://40.media.tumblr.com/27d052a6d4a74e9db52239bef6a434f2/tumblr_nhnn2qcrEm1qbd1lso1_500.jpg"],
  [5, "description tat 5", "http://cs621516.vk.me/v621516880/e3ca/t5S6K8R206Y.jpg"],
  [6, "description tat 6", "https://scontent-b-hkg.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/16427_10152915687333960_4940239661624971162_n.jpg?oh=d2cad61f301cbfbc176a5af7a98c6b82&oe=550AF729"],
  [7, "description tat 7", "http://40.media.tumblr.com/8af68299b1d7efbaf0c686a9497ec72e/tumblr_ni6r0cW8G11qfp2h6o1_500.jpg"],
  [8, "description tat 8", "http://41.media.tumblr.com/43d6313750ef9a42124220ee2fe892a2/tumblr_nhrm5q3ZVX1qg23jjo1_500.jpg"],
  [9, "description tat 9", "http://40.media.tumblr.com/51f2486ec931759d983ef03bd8c474a6/tumblr_ni6nsziOx21qdvufoo1_500.jpg"],
  [10, "description tat 10", "http://36.media.tumblr.com/d5f5e6a189a20394c0e2effb991cbe0c/tumblr_ni0wtuKZtC1r2m7jgo1_500.jpg"] 
]

user_list.each do |user_name, email, password|
  User.create user_name: user_name, email: email, password: password
end

shop_list.each do |name, address, city, state, zip, url|
  Shop.create name: name, address: address, city: city, state: state, zip: zip, url: url
end

artist_list.each do |name, nick, email, shop_id, url|
  Artist.create name: name, nick: nick, email: email, shop_id: shop_id, url: url
end

tattoo_list.each do |user_id, name, artist_id, when_date, shop_id, why|
  Tattoo.create user_id: user_id, name: name, artist_id: artist_id, when: when_date, shop_id: shop_id, why: why
end

favorite_list.each do |user_id, tattoo_id|
  Favorite.create user_id: user_id, tattoo_id: tattoo_id
end

tattoo_pic_list.each do |tattoo_id, description, url|
  TattooPic.create tattoo_id: tattoo_id, description: description, url: url
end


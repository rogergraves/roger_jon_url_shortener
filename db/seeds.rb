# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Url.create(shorturl: 'g', longurl: 'http://www.google.com/', user_id: 1)
Url.create(shorturl: 'y', longurl: 'http://www.yahoo.com/', user_id: 1)


# create_table "urls", :force => true do |t|
#   t.string   "shorturl"
#   t.string   "longurl"
#   t.integer  "user_id"
#   t.datetime "created_at", :null => false
#   t.datetime "updated_at", :null => false
# end

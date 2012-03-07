# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(email: 'rogergraves@gmail.com', password: 'roger234')

Url.create(shorturl: 'g', longurl: 'http://www.google.com/', user_id: user1.id)
Url.create(shorturl: 'y', longurl: 'http://www.yahoo.com/', user_id: user1.id)


# create_table "urls", :force => true do |t|
#   t.string   "shorturl"
#   t.string   "longurl"
#   t.integer  "user_id"
#   t.datetime "created_at", :null => false
#   t.datetime "updated_at", :null => false
# end


# create_table "users", :force => true do |t|
#   t.string   "email",                  :default => "", :null => false
#   t.string   "encrypted_password",     :default => "", :null => false
#   t.string   "reset_password_token"
#   t.datetime "reset_password_sent_at"
#   t.datetime "remember_created_at"
#   t.integer  "sign_in_count",          :default => 0
#   t.datetime "current_sign_in_at"
#   t.datetime "last_sign_in_at"
#   t.string   "current_sign_in_ip"
#   t.string   "last_sign_in_ip"
#   t.datetime "created_at",                             :null => false
#   t.datetime "updated_at",                             :null => false
# end

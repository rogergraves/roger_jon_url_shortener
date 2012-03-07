class Url < ActiveRecord::Base
  validates :shorturl, :longurl, :presence => true
  validates :shorturl, :uniqueness => true
end


# create_table "urls", :force => true do |t|
#   t.string   "shorturl"
#   t.string   "longurl"
#   t.integer  "user_id"
#   t.datetime "created_at", :null => false
#   t.datetime "updated_at", :null => false
# end

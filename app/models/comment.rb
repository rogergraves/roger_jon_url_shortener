class Comment < ActiveRecord::Base
  belongs_to :url
  validates :comment, :url_id, :presence => true

end

# create_table "comments", :force => true do |t|
#   t.integer  "url_id"
#   t.text     "comment"
#   t.datetime "created_at", :null => false
#   t.datetime "updated_at", :null => false
# end
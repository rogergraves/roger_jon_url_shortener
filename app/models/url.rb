class Url < ActiveRecord::Base
  validates :longurl, :user_id, :presence => true
  has_many :comments, :dependent => :destroy
  
  belongs_to :user
  
  before_create :add_http, :add_random_shorturl
  
  private
  
  def add_http
    if self.longurl.downcase.start_with?('http') == false
      self.longurl = 'http://'+self.longurl
    end
    
    logger.info "Url.remove_http TRIGGERED: #{self.longurl}"
    
  end
  
  def add_random_shorturl
    logger.info "Url.generate_custom_shorturl IS WORKING!!!!"
    
    shortened_url = nil
    while(shortened_url.nil?)
      length = rand(4..6)
      o =  [('a'..'z'),(0..9)].map{|i| i.to_a}.flatten  
      random_string  =  (0..length).map{ o[rand(o.length)]  }.join
      
      shortened_url = random_string unless Url.where("shorturl = ?", random_string).exists?
    end
    
    self.shorturl = shortened_url
    
  end
  
end


# create_table "urls", :force => true do |t|
#   t.string   "shorturl"
#   t.string   "longurl"
#   t.integer  "user_id"
#   t.datetime "created_at", :null => false
#   t.datetime "updated_at", :null => false
# end

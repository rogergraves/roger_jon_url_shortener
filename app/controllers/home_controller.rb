class HomeController < ApplicationController
  
  def index
    unless params[:in_url].nil?
      @url = Url.where(:shorturl => params[:in_url])
      redirect_to @url.first.longurl if @url.exists?
     end     
  end
  
  def create
    logger.info "HomeController.create CALLED!!!!!!!!!!!!!!!!!!"
    Url.create(user_id: current_user.id, longurl: params[:url])
    
    render "index"
  end
  
end


# create_table "urls", :force => true do |t|
#   t.string   "shorturl"
#   t.string   "longurl"
#   t.integer  "user_id"
#   t.datetime "created_at", :null => false
#   t.datetime "updated_at", :null => false
# end
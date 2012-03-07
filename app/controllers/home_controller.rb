class HomeController < ApplicationController
  def index
    if params[:in_url].nil? == false
      @url = Url.where(:shorturl => params[:in_url])
      redirect_to @url.first.longurl if @url.exists?
    elsif params[:url].nil? == false && user_signed_in?
      #@url = Url.new
      logger.info "USER INFO: "+current_user.to_s
      #logger.info "CURRENT USER: "+current_user.id if params[:url] && user_signed_in?
    end
    
  end
  # 
  # def addurl
  #   logger.info "HomeController.addurl WORKS!!!"+current_user.id if params[:url] && user_signed_in?    
  # end
  
end

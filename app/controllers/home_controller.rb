class HomeController < ApplicationController
  def index
    unless params[:in_url].nil?
      @url = Url.where(:shorturl => params[:in_url])
      redirect_to @url.first.longurl if @url.exists?
    else
      logger.info "CURRENT USER: "+current_user.id if params[:url] && user_signed_in?
    end
  end
  
end

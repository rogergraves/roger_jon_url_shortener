class UrlController < ApplicationController
  
  def create
    logger.info "UrlController.create WAS CALLED!!!!!!!!!!"
    redirect_to root_path
  end
  
  def edit
    logger.info "UrlController.edit WAS CALLED!!!!!!!!!!"
  end
  
  def show
    logger.info "UrlController.show WAS CALLED!!!!!!!!!!"
  end
  
end

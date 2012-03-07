class UrlController < ApplicationController
  
  def new
    logging.info "UrlController.new TRIGGERED!!!!!!!!! param[:url]=#{param[:url]}"
  end
  
end

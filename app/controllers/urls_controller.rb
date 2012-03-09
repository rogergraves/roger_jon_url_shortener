class UrlsController < ApplicationController
  def edit
  end

  def update
  end

  def show
    @url = Url.find(params[:id])
    @comments = @url.comments
    logger.info "UrlController.show called!!!!!!!!: URL: #{@url.id}, Number of comments: #{@comments.count}"
  end
end

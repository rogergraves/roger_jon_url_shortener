module HomeHelper  
  def user_links    
    @links = "<table>\n<tr>\n\t<th>Long URL</th><th>Short URL</th><th>Comments</th><th>Delete?</th>\n</tr>\n"
    
    urls = Url.where("user_id = ?", current_user.id)
    urls.each do |r|
      @links += "<tr><td>#{r.longurl}</td><td><a href='/#{r.shorturl}' target='_new'>#{format_short_url r.shorturl}</td><td>#{link_to 'Edit', url_path(r)}</td><td><a href='#'>delete?</a></td></tr>\n"
    end
    
    @links.html_safe
  end
  
end


module HomeHelper
  def homepage_links
    if signed_in?
      link_to "Sign out", destroy_user_session_path(:user), :method => :delete
    else
      link_to("Sign up", new_registration_path(:user)) + " or " + link_to("Sign in", new_session_path(:user))
    end
  end
  
  def user_links    
    @links = "<table>\n<tr>\n\t<th>Long URL</th><th>Short URL</th><th>Delete?</th>\n</tr>\n"
    host = "http://#{request.host}"
    host += ":#{request.port}" if request.port != 80
    
    urls = Url.where("user_id = ?", current_user.id)
    urls.each do |r|
      @links += "<tr><td>#{r.longurl}</td><td><a href='/#{r.shorturl}' target='_new'>#{host}/#{r.shorturl}</td><td><a href='#'>delete?</a></td></tr>\n"
    end
    
    @links.html_safe
  end
  
end


module ApplicationHelper
  def account_links
    if signed_in?
      link_to "Sign out", destroy_user_session_path(:user), :method => :delete
    else
      link_to("Sign up", new_registration_path(:user)) + " or " + link_to("Sign in", new_session_path(:user))
    end
  end
  
  def format_short_url code
    port = ""
    port = ":#{request.port}" if request.port != 80
    
    "http://#{request.host}#{port}/#{code}"
  end
end

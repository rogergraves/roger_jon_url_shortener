module ApplicationHelper
  
  def login_logout_link
    if user_signed_in?
      link_to "Sign out", destroy_user_session_path, :method => :delete
    else
      link_to("Log in", user_session_path) + " or " + link_to("Sign up", new_user_registration_path) 
    end
  end
end

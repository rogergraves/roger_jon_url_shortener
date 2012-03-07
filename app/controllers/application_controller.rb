class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  
  
  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    new_user_registration_path
  end
  
end

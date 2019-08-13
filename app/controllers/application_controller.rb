class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # ADDED FIRST_NAME, LAST_NAME, PHONE AND AVATAR
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone, :avatar])

    # For additional in app/views/devise/registrations/edit.html.erb
    # ADDED FIRST_NAME, LAST_NAME, PHONE AND AVATAR
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone, :avatar])
  end
end

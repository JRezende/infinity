class ApplicationController < ActionController::Base
  #respond_to :json
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters 
  	devise_parameter_sanitizer.for(:sign_up) << :nome 
  end


end

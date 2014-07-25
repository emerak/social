class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end
  private


  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(user)
    root_path
  end
end

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_carousel
  before_action :authenticate_server

  protect_from_forgery with: :null_session

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def authenticate_server
    authenticate_or_request_with_http_basic do |username, password|
      username == 'kippon' && password == 'kippon'
    end
  end

  private

  def set_carousel
    @carousels = Admin::Carousel.all
  end

end

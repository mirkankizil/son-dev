
class ApplicationController < ActionController::Base
  before_action:configure_permitted_parameters,if: :devise_controller?
  before_action:set_locale
  
  protect_from_forgery with: :exception
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
  end
  def set_locale
    I18n.locale=params[:locale] || I18n.default_locale
  end
end

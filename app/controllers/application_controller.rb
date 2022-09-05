class ApplicationController < ActionController::Base
  add_flash_types :danger, :success
  before_action :set_locale

  I18n.default_locale = :pt

  def set_locale
    if params[:locale]
      cookies[:locale] = params[:locale]
    end 
    if cookies[:locale]
      if I18n.locale != cookies[:locale]
        I18n.locale = cookies[:locale]
      end
    end
  end
end

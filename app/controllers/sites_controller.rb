class SitesController < ApplicationController
  def change_locale
    @locale = I18n.available_locales.map(&:to_s).include?(params[:locale]) ? params[:locale] : I18n.default_locale

    referer = request.referer && (Rails.application.routes.recognize_path(request.referer) rescue nil)
    redirect_to (referer && url_for(referer.merge({ locale: @locale }))) || root_path({ locale: @locale })
  end
end

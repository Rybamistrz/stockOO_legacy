class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_admin

  def current_admin
    @super_admin ||= User.where(:role => "super_admin").first
  end

end

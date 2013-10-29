class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  def current_user
    puts session.inspect
  end
end

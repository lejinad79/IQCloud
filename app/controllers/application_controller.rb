class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_action :authenticate_beekeeper!


  # Da se moze koristi current_beekeeper i u modelima kao npr:
  # Beekeeper.current.id
  def set_current_beekeeper_id
    Beekeeper.current = current_beekeeper.id
  end

  def set_current_beekeeper_count
    Beekeeper.count = current_beekeeper.sign_in_count
  end

end

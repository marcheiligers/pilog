class DashboardController < ApplicationController
  before_action :set_current_nav

  def index
    @log = Log.last
    @weather = Weather.last
  end

private
    def set_current_nav
      @current_nav = :dashboard
    end

end
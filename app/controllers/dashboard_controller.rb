class DashboardController < ApplicationController
  before_action :set_current_nav

  def index
    @log = Log.last
    @weathers = Weather.last(2880)
  end

private
    def set_current_nav
      @current_nav = :dashboard
    end

end
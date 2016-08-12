class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :auth_required

  def auth_required
    basic_auth = ENV['PILOG_AUTH']
    if session[:basic_auth] == basic_auth || authenticate_with_http_basic { |usn, pwd| basic_auth == "#{usn}:#{pwd}" }
      session[:basic_auth] = basic_auth
    else
      request_http_basic_authentication
    end
  end
end

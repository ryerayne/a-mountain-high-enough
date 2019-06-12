require './config/environment'

class ApplicationController < Sinatra::Base

  enable :sessions
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :"/welcome"
  end

  helpers do

    def valid_new_username(username)
      !User.find_by(:username => username) && !params[:username].empty?
    end

    def redirect_if_not_logged_in
      if !logged_in?
        redirect "/users/login"
      end
    end

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end

    def redirect_if_not_current_users_resource(id)
      trip = Trip.find_by_id(params[:id])
      if current_user != trip.user
        redirect "/homepage"
      end
    end

    def check_trip_data(params)
      params[:name].empty? || params[:trail_id].empty? || params[:month].empty? || params[:day].empty? || params[:year].empty?
    end

  end

end

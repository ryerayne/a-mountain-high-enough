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
    "A Mountain High Enough"
  end

  helpers do

    def valid_new_username(username)
      !User.find_by(:username => username) && !params[:username].empty?
    end

  end

end

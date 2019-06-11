class UsersController < ApplicationController

  get '/signup' do
    if session[:user_id]
      redirect :'/homepage'
    else
      erb :'/users/signup'
    end
  end

  post '/signup' do
    if valid_new_username(params[:username]) && !params[:password].empty?
      @user = User.create(params)
      session[:user_id] = @user.id
      redirect '/homepage'
    else
      redirect '/signup'
    end
  end

  get '/homepage' do
    erb :'/homepage'
  end

  get '/login' do
    if session[:user_id]
      redirect :'/homepage'
    else
      erb :'/users/login'
    end
  end

  post '/login' do
    @user = User.find_by(:username => params[:username])
    binding.pry
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/homepage'
    else
      redirect '/login'
    end
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end

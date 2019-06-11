class TripsController < ApplicationController

  get "/trips" do
    @trips = Trip.all
    erb :"/trips/index.html"
  end

  get "/trips/new" do
    @trails = Trail.all
    erb :"/trips/new.html"
  end

  post "/trips" do
    @trip = Trip.new(params)
    @trip.user = User.find_by_id(session[:user_id])
    @trip.save

    redirect "/trips"
  end

  get "/trips/:id" do
    erb :"/trips/show.html"
  end

  get "/trips/:id/edit" do
    erb :"/trips/edit.html"
  end

  patch "/trips/:id" do
    redirect "/trips/:id"
  end

  delete "/trips/:id/delete" do
    redirect "/trips"
  end
end

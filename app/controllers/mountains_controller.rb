class MountainsController < ApplicationController

  get "/mountains" do
    erb :"/mountains/index.html"
  end

  get "/mountains/new" do
    erb :"/mountains/new.html"
  end

  post "/mountains" do
    redirect "/mountains"
  end

  get "/mountains/:id" do
    erb :"/mountains/show.html"
  end

  get "/mountains/:id/edit" do
    erb :"/mountains/edit.html"
  end

  patch "/mountains/:id" do
    redirect "/mountains/:id"
  end

  delete "/mountains/:id/delete" do
    redirect "/mountains"
  end
end

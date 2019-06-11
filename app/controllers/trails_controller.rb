class TrailsController < ApplicationController

  get "/trails" do
    erb :"/trails/index.html"
  end

  get "/trails/new" do
    erb :"/trails/new.html"
  end

  post "/trails" do
    redirect "/trails"
  end

  get "/trails/:id" do
    erb :"/trails/show.html"
  end

  get "/trails/:id/edit" do
    erb :"/trails/edit.html"
  end

  patch "/trails/:id" do
    redirect "/trails/:id"
  end

  delete "/trails/:id/delete" do
    redirect "/trails"
  end
end
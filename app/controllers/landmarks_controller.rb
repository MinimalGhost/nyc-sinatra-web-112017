class LandmarksController < ApplicationController

  #INDEX
  get '/landmarks/' do
    erb :'/landmarks/index'
  end

  #CREATE
  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks' do
    erb :'/landmarks'
  end

  #SHOW
  get '/landmarks/:id' do
    erb :'/landmarks/show'
  end

  #EDIT
  get '/landmarks/:id/edit' do

    erb :'/landmarks/edit'
  end

  patch '/landmarks/:id' do

    erb :'/landmarks/show'
  end

  #DELETE
  delete '/landmarks/:id/delete' do

    redirect to '/landmarks'
  end
end

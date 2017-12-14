class LandmarksController < ApplicationController

  #INDEX
  get '/landmarks' do
    @landmarks = Landmark.all

    erb :'/landmarks/index'
  end

  #CREATE
  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks' do
    # binding.pry
    @landmark = Landmark.create(params[:landmark])
    redirect to '/landmarks'
  end

  #SHOW
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])

    erb :'/landmarks/show'
  end

  #EDIT
  get '/landmarks/:id/edit' do

    erb :'/landmarks/edit'
  end

  patch '/landmarks/:id' do

    # redirect '/landmarks/:id'
  end

  #DELETE
  delete '/landmarks/:id/delete' do

    redirect to '/landmarks'
  end
end

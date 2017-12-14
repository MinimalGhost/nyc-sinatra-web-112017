class FiguresController < ApplicationController

  #INDEX
  get '/figures/' do
    erb :'/figures/index'
  end

  #CREATE
  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do

    redirect to '/figures'
  end

  #SHOW
  get '/figures/:id' do
    erb :'/figures/show'
  end

  #EDIT
  get '/figures/:id/edit' do

    erb :'/figures/edit'
  end

  patch '/figures/:id' do

    # redirect '/figures/:id'
  end

  #DELETE
  delete '/figures/:id/delete' do

    redirect to '/figures'
  end
end

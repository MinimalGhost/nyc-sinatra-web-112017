class FiguresController < ApplicationController

  #INDEX
  get '/figures' do
    @figures = Figure.all

    erb :'/figures/index'
  end

  #CREATE
  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'/figures/new'
  end

  post '/figures' do
    # binding.pry
    @figure = Figure.create(params[:figure]) #create the new Figure

    if params[:title][:id] != nil #i.e. if this is an existing title
      #just create the association
      FigureTitle.create(figure_id: @figure.id, title_id: params[:title][:id])
    else #i.e. if this is a NEW title
      #create the title & create the association
      @title = Title.create(params[:title])
      FigureTitle.create(figure_id: @figure.id, title_id:@title.id)
    end

    if params[:landmark][:id] != nil #i.e. if this is an existing landmark
      #look up the landmark, then give it the right figure.id
      @landmark = Landmark.find(params[:landmark][:id])
      binding.pry
      @landmark.figure_id = @figure.id

    else #i.e. if this is a NEW landmark
      #create the landmark & give it the right figure_id
      @landmark = Landmark.create(params[:landmark])
      @landmark.figure_id = @figure.id
    end
    redirect to '/figures'
  end

  #SHOW
  get '/figures/:id' do
    @figure = Figure.find(params[:id])

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

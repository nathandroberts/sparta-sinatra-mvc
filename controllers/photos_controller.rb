class PhotosController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello world - abcdefghijklmnopqrstuvwxyz'
  end

  get '/photos' do
    'this is the photos page'
  end

  get '/photos/new' do
    'New photo form'
  end

  post '/photos' do
    'post photo'
  end

  get '/photos/:id' do
    id = params[:id]
    "SHOW #{id}"
  end
  get '/photos/:id/edit' do
    "edit photo #{params[:id]}"
  end
  put '/photos/:id' do
    "update photo#{params[:id]}"
  end
  delete '/photos/:id' do
    "delete id #{params[:id]}"
  end
end

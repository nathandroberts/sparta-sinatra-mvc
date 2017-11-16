class PhotosController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  #sets root as the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, 'views')}
  $photos = [{
	 id: 0,
	 title: "Photo 1",
	 body: "This is the first post",
   source: "https://78.media.tumblr.com/avatar_7340c7bed74b_128.png"
},
{
    id: 1,
    title: "Photo 2",
    body: "This is the second post",
    source: "https://is2-ssl.mzstatic.com/image/thumb/Purple3/v4/99/3d/7d/993d7d30-a2f9-085f-8b70-ff71f1eee2bf/source/256x256bb.jpg"
},
{
    id: 2,
    title: "Photo 3",
    body: "This is the third post",
    source: "https://static-s.aa-cdn.net/img/ios/905870222/30e83b11b5a9a086abd5f8a4acab174d?v=1"
}];

  get '/' do
    @title = 'Photo Homepage'
    erb :'photos/home'
  end

  get '/photos' do
    @title = 'Photos'
    @photos = $photos
    erb :'photos/index'
  end

  get '/photos/new' do
    'New photo form'
  end

  post '/photos' do
    'post photo'
  end

  get '/photos/:id' do
    id = params[:id].to_i
    @photo = $photos[id]
    erb :'photos/show'
  end
  get '/photos/:id/edit' do
    @paragraph = 'edit this photo'
    id = params[:id].to_i
    @photo = $photos[id]
    erb :'photos/edit'
  end
  put '/photos/:id' do
    "update photo#{params[:id]}"
  end
  delete '/photos/:id' do
    "delete id #{params[:id]}"
  end
end

require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/cats" do
    search_term = params[:query]
    if search_term && search_term.length >0
      @cats = Cat.search(search_term)
    else
      @cats = cat.all
    end
    erb :index
  end

  get "/cats/:id" do
    unless @cat
      response.status = 404
      "This kitty does not exist"
    else
      @cat = Cat.find_by(id: params[:id])
        erb :kitty_info

    end
  end

end

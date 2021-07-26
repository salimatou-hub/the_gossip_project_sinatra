require 'Bundler'
Bundler.require

class ApplicationController < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new.save Gossip.new(params["gossip_author"], params["gossip_content"]).save 
    puts "#{params}"
  end
end
  


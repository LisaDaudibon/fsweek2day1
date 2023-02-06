
require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: {gossips: Gossip.all, find: Gossip.find}
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params['gossip_author'], params['gossip_content']).save_to_csv
    redirect '/'
  end

  # get '/gossips/:id' do
  #   erb :params['id']
  #   @foo = Foo.find(params['id'])
  # end
  # get '/gossips/:id' do
  #   foo = Foo.find(params['id'])
  #   erb , :locals => { :bar => foo }
  # end
end



class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/gossips/new/' do
    puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
  end
end


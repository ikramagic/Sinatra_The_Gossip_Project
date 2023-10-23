require_relative 'gossip'

class ApplicationController < Sinatra::Base 
    #en héritant de Sinatra, la classe AppCon obtient les fonctionnalités de Sinatra
    get '/' do
    erb :index, locals: {gossips: Gossip.all} #une méthode locals, qui permet d'envoyer à notre fichier ERB des variables que l'on utilisera
    end

    get '/gossips/new' do
    erb :new_gossip
    end

    post '/gossips/new' do
        Gossip.new(params["gossip_author"], params["gossip_content"]).save
        redirect '/'
    end

    get '/gossips/all' do
        erb :all_gossips, locals: {gossips: Gossip.all}
    end

    get '/gossips/:id' do
    index = params[:id].to_i #on indique que la variable index sera égale au chiffre qui sera trouvé dans l'URL
    @element = Gossip.all[index] 
        erb :show
    end
end
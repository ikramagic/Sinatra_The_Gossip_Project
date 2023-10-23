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

    get '/gossips/all' do #indique l'URL
        erb :all_gossips, locals: {gossips: Gossip.all} #on met all_gossips.erb dedans, on lui indique où trouver les variables qu'on y utilisera
    end

    get '/gossips/:id' do
    index = params[:id].to_i 
    #on indique que la variable index sera égale au chiffre qui sera trouvé dans l'URL
    @element = Gossip.all[index] 
    #utilise l'index pour accéder à un potin spécifique qui se trouve dans notre array all_gossips dans la méthode all
        erb :show #on demande l'affichage du tout en HTML qui se trouve dans le .erb nommé show
    end
end
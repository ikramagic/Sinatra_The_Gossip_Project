class ApplicationController < Sinatra::Base 
    #en héritant de Sinatra, la classe AppCon obtient les fonctionnalités de Sinatra
  get '/' do
    "<html><head><title>The Gossip Project</title></head><body><h1>Mon super site de gossip !</h1></body></html>"
  end

  #run! if app_file == $0
    #permet d’exécuter le code de la classe sans avoir à écrire un ApplicationController.new.perform en bas du fichier
end
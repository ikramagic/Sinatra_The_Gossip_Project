class ApplicationController < Sinatra::Base 
    #en héritant de Sinatra, la classe AppCon obtient les fonctionnalités de Sinatra
    get '/' do
    erb :index
    end
end
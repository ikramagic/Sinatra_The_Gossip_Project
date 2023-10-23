require 'bundler'
Bundler.require

$:.unshift File.expand_path("../lib", __FILE__)
require 'controller'

run ApplicationController

#fichier config.ru qui contient les informations nécessaires au lancement de notre serveur
#on demande simplement au serveur d'exécuter le contenu de la classe ApplicationController
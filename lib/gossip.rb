require 'csv' 
require 'pry'

class Gossip
    attr_accessor :author, :content

    def initialize(author, content)
        @author = author
        @content = content
    end

    def save
        CSV.open("db/gossip.csv", "ab") do |stored| #ab ou a+ à peu de choses près la meme, juste ab + compatible
        stored << [@author, @content] 
        end
    end

    def self.all

        all_gossips = []

        CSV.foreach("db/gossip.csv") do |ligne_de_gossip| 
            #itère sur chachune des lignes du fichier CSV qui deviennent ligne_de gossip
            gossip_provisoire = Gossip.new(ligne_de_gossip[0], ligne_de_gossip[1])
            #crée un objet gossip en reprenant l'index 0 (auteur) ensuite l'index 1 de ligne de gossip (contenu)
            all_gossips << gossip_provisoire
            #renvoie tout ça dans l'array
        end
        return all_gossips
    end
end
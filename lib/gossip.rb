require 'csv' 
require 'pry'

class Gossip
    attr_accessor :author, :content

    def initialize(author, content)
        @author = author
        @content = content
    end

    def save
        CSV.open("db/gossip.csv", "ab") do |stored|
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

    def update
        data_base_reused = 'db/gossip.csv'
        full_data_base_reused = CSV.read(data_base_reused)

        new_author = params["gossip_author_edit"]
        new_content = params["gossip_content_edit"]

        if row[0].to_i == id
            row[1] = new_author  
            row[2] = new_content
        end

        CSV.open(full_data_base_reused, 'w') do |refill_csv|
          refill_csv << full_data_base_reused[0]
          full_data_base_reused.each { |row| refill_csv << row }
        end
    end      
end
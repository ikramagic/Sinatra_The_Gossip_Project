require 'csv' 
require 'pry'

class Gossip
    attr_accessor :author, :content

    def initialize(author, content)
        @author = author
        @content = gossip
    end
    def save
        CSV.open("db/gossip.csv", "ab") do |stored| #ab ou a+ à peu de choses près la meme, juste ab + compatible
        stored << [@author, @content] 
        end
    end
end
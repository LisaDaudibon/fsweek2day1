
require 'csv'

class Gossip
  attr_accessor :author, :content
  
  def initialize (author, content)
      @author = author
      @content = content
  end

  def save_to_csv #pour sauvegarder tous les gossips dans le fichier csv
    arrays_csv = [@author, @content]
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << arrays_csv
    end
  end

  def self.all 
    all_gossips = [] #on initialise un array vide
    CSV.read("./db/gossip.csv").each do |csv_line|  # va chercher chacune des lignes du csv do
      all_gossips << Gossip.new(csv_line[0], csv_line[1]) #all_gossips est un array qui se remplit du gossip qui vient d'être créé
    end
    return all_gossips #retourne un array rempli de tous les gossips
  end

  def self.find 
    find_gossips = [] #on initialise un array vide
    Gossip.all.each do |n|
      find_gossips << n #find_gossips est un array qui se remplit de toutes les instances qui sont créé
    end
    return find_gossips #retourne un array rempli de tous les gossips
  end
end
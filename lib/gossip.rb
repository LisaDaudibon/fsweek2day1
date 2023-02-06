
class Gossip
  attr_
  
  def initialize
      
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << ["Mon super auteur", "Ma super description"]
    end
  end
end
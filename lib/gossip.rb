
require 'csv'

class Gossip
  attr_reader :author, :content
  
  def initialize (author, content)
      @author = author
      @content = content
  end

  def save_to_csv
    arrays_csv = [@author, @content]
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << arrays_csv
    end
  end
end

# Gossip.new("super", "sayen").save_to_csv
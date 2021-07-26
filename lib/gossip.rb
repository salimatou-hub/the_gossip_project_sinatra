require 'Bundler'
Bundler.require

class gossip (auther, content)
    attr_accessor: author, :content

    def initialize (author, content)
        @author = "gossip_author"
        @content = "gossip_content"
    end

    def save
        CSV.open("./db/gossip.csv", "ab") do |csv|
        csv << ["gosssip_author", "gossip_content"]
    end
  
end

  
require 'open-uri'

class Search
  def self.index
    @api  = IndexTank::Client.new(
      'http://:0yzjEqx707NaRs@dt733.api.indextank.com')
    @index ||= @api.indexes('idx')
    @index
  end

  def self.search(query)
    index.search(query, 
      :fetch=>'name,doctor')
  end

end

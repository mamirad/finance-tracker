class Stock < ApplicationRecord

	has_many :users, :through => :userstocks
	has_many :userstocks
	   #  def self.new_from_lookup(ticker_symbol)
    #     looked_up_stock = StockQuote::Stock.quote("GOOG")
    #     new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
    # end
end

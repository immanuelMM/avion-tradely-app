class Stock < ApplicationRecord
  has_many :brokers_stocks, dependent: :destroy
  has_many :users, through: :broker_stocks
  has_many :buyers_stocks, dependent: :destroy
  has_many :users, through: :buyer_stocks
  has_many :transactions, through: :buyer_stocks

  def self.list
    [
        @MSFT = api('MSFT'),
        @TSLA = api('TSLA'),
        @A = api('A'),
        @APP = api('APP'),
        @AAON = api('AAON'),
        @AAWW = api('AAWW'),
        @AB = api('AB'),
        @ABB = api('ABB'),
        @ABBV = api('ABBV'),
        @ABC = api('ABC'),
        @ABCM = api('ABCM')

    ]
  end
end

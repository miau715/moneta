class Category < ActiveRecord::Base
  has_many :tracks

  scope :income, where(exchange_type: "income")
  scope :outcome, where(exchange_type: "outcome")
end

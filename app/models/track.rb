class Track < ActiveRecord::Base
  belongs_to :account, :counter_cache => true
  belongs_to :category

  scope :order_by_date, order("exchange_date DESC")
end

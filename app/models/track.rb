class Track < ActiveRecord::Base
  belongs_to :account, :counter_cache => true
  belongs_to :category

  scope :order_by_date, order("exchange_date DESC")
  #scope :date_filter, lambda { |start_date, end_date| where("exchange_date between ? and ?", start_date, end_date) }

end

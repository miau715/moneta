class Track < ActiveRecord::Base
  belongs_to :account, :counter_cache => true
  belongs_to :category
end

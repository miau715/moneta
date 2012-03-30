class Track < ActiveRecord::Base
  has_one :category
end

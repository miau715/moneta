class Track < ActiveRecord::Base
  belongs_to :property
  has_one :category
end

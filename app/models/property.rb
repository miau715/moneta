class Property < ActiveRecord::Base
  has_many :tracks
  
  def is_setted?
    true
    unless Property.where("value is not null").count == 0
      false
    end
  end
end

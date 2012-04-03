class Property < ActiveRecord::Base
  def is_setted?
    true
    unless Property.where("value is not null").count == 0
      false
    end
  end
end

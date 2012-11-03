class Locale < ActiveRecord::Base
  attr_accessible :name, :address, :has_visited

  validates :address, :presence => true, :uniqueness => true
  validates :name, :presence => true
end

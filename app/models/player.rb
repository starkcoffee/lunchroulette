class Player < ActiveRecord::Base
  validates_presence_of :email, :name
  attr_accessible :email, :name
end

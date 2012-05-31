class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :notes, :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true
end

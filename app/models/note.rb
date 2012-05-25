class Note < ActiveRecord::Base
  attr_accessible :amount, :description

  belongs_to :category
end

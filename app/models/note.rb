class Note < ActiveRecord::Base
  attr_accessible :amount, :description

  belongs_to :category
  has_one :document

  has_many :note_keywords
  has_many :keywords, :through => :note_keywords

  validates :description, :presence => true, :length => { :in => 5..30 } #{ :minimum => 5, :maximum => 30 }
  validates :amount, :presence => true, :numericality => true
  validates :date, :presence => true
  validates :category_id, :presence => true

  validates_with DatesRangeValidator
end

class NoteKeyword < ActiveRecord::Base
  belongs_to :note
  belongs_to :keyword
end

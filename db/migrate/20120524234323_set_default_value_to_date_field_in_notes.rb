class SetDefaultValueToDateFieldInNotes < ActiveRecord::Migration
  def up
    Note.all.each do |note|
      note.update_attribute :date, note.created_at
    end
  end

  def down
  end
end

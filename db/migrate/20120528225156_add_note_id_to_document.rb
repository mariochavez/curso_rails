class AddNoteIdToDocument < ActiveRecord::Migration
  def change
    add_column :documents, :note_id, :integer
  end
end

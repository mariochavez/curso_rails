class CreateNotesKeywords < ActiveRecord::Migration
  def change
    create_table :note_keywords do |t|
      t.integer :note_id
      t.integer :keyword_id

      t.timestamps
    end
  end
end

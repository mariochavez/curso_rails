class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :description
      t.decimal :amount

      t.timestamps
    end
  end
end

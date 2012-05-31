class CreateDocument < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :data

      t.timestamps
    end
  end
end

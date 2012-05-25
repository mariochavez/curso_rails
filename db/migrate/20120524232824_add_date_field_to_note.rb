class AddDateFieldToNote < ActiveRecord::Migration
  def change
    add_column :notes, :date, :date
  end
end

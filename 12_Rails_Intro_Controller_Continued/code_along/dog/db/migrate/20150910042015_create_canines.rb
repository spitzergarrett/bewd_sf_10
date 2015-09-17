class CreateCanines < ActiveRecord::Migration
  def change
    create_table :canines do |t|
      t.string :name
      t.string :breed

      t.timestamps null: false
    end
  end
end

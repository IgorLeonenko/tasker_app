class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.text :description
      t.belongs_to :user, foreign_key: true, index: true, null: false
      t.timestamps
    end
  end
end

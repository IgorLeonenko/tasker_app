class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :description
      t.boolean :done
      t.belongs_to :list, index: true, null: false
      t.timestamps
    end
  end
end

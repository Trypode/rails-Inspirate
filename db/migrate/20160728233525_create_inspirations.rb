class CreateInspirations < ActiveRecord::Migration
  def change
    create_table :inspirations do |t|
      t.date :date
      t.string :name
      t.string :desc

      t.timestamps null: false
    end
  end
end

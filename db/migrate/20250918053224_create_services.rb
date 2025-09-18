class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :price
      t.integer :duration
      t.references :professional, null: false, foreign_key: true

      t.timestamps
    end
  end
end

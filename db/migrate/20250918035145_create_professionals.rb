class CreateProfessionals < ActiveRecord::Migration[7.1]
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :photo
      t.time :start_at
      t.time :finish_at
      t.string :role

      t.timestamps
    end
  end
end

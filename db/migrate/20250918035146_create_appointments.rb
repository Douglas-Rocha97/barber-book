class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.text :details
      t.string :goal_image
      t.time :start_time
      t.time :finish_time
      t.references :user, null: false, foreign_key: true
      t.references :professional, null: false, foreign_key: true
      t.timestamps
    end
  end
end

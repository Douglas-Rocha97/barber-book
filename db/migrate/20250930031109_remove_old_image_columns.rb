class RemoveOldImageColumns < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :photo, :string
    remove_column :professionals, :photo, :string
    remove_column :appointments, :goal_image, :string
  end
end

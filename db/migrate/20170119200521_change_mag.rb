class ChangeMag < ActiveRecord::Migration[5.0]
  def change
    change_column :magazines, :description, :text
  end
end

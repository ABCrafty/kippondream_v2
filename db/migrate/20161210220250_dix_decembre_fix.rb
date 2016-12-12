class DixDecembreFix < ActiveRecord::Migration[5.0]
  def change
    add_column :magazines, :description, :string
  end
end
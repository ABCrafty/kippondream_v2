class AddPairToMag < ActiveRecord::Migration[5.0]
  def change
    add_column :mangas, :pair, :boolean
  end
end

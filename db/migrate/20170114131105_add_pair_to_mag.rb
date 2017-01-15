class AddPairToMag < ActiveRecord::Migration[5.0]
  def change
    add_column :mangas, :pair, :boolean
    add_column :mangas, :date_parution, :datetime
    add_column :magazines, :pair, :boolean
    add_column :magazines, :date_parution, :datetime
  end
end

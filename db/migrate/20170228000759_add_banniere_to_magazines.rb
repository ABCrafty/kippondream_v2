class AddBanniereToMagazines < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :banniere
    add_column :mangas, :banniere, :string
    add_column :magazines, :banniere, :string
  end
end

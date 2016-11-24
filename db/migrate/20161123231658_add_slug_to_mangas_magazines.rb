class AddSlugToMangasMagazines < ActiveRecord::Migration[5.0]
  def change
    add_column :magazines, :slug, :string
    add_column :mangas, :slug, :string
  end
end

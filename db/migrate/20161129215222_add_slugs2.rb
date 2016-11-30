class AddSlugs2 < ActiveRecord::Migration[5.0]
  def change
    add_column :mangas, :slug, :string
    add_column :pages, :magazine_id, :integer
    add_column :scans, :manga_id, :integer
  end
end

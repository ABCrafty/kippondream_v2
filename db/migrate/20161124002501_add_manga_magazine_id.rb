class AddMangaMagazineId < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :manga_id, :integer
    add_column :pages, :magazine_id, :integer
  end
end

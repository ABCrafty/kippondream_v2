class AddSlugs < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_mangas, :user_id, :integer
    rename_column :admin_scans, :admin_manga_id, :manga_id
  end
end

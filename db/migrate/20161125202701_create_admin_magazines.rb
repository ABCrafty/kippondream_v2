class CreateAdminMagazines < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_magazines do |t|
      t.string :titre
      t.string :thumbnail
      t.string :slug
      t.timestamps

    end
  end
end

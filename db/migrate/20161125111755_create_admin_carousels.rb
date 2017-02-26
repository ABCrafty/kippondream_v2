class CreateAdminCarousels < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_carousels do |t|
      t.string :image
      t.string :admin_carousels, :titre
      t.text :admin_carousels, :description, :limit => 220
      t.string :admin_carousels, :lien

      t.timestamps
    end
  end
end

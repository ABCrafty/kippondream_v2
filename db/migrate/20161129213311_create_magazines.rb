class CreateMagazines < ActiveRecord::Migration[5.0]
  def change
    create_table :magazines do |t|
      t.string :titre
      t.string :link_mangadraft
      t.text :sommaire
      t.string :apercu
      t.string :slug
      t.boolean :pair
      t.datetime :date_parution
      t.text :description, :limit => 1000

      t.timestamps
    end
  end
end

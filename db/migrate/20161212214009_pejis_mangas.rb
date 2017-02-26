class PejisMangas < ActiveRecord::Migration[5.0]
  def change

    create_table :pejis do |t|
      t.string :image
      t.integer :scan_number
      t.integer :chapter_id
      t.timestamps
    end

    create_table :mangas do |t|
      t.string :titre
      t.text :description, :limit => 300
      t.string :apercu
      t.string :slug
      t.integer :user_id
      t.text :description
      t.boolean :pair
      t.datetime :date_parution

      t.timestamps
    end
  end
end

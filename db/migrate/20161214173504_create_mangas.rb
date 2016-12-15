class CreateMangas < ActiveRecord::Migration[5.0]
  def change
    drop_table :mangas
    create_table :mangas do |t|
      t.string :titre
      t.string :description
      t.string :apercu
      t.string :slug

      t.timestamps
    end
  end
end

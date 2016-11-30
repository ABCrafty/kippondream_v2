class CreateMangas < ActiveRecord::Migration[5.0]
  def change

    drop_table :mangas
    drop_table :scans
    drop_table :magazines
    drop_table :pages

    create_table :mangas do |t|
      t.string :titre
      t.string :apercu

      t.timestamps
    end
  end
end

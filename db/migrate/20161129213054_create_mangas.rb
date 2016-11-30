class CreateMangas < ActiveRecord::Migration[5.0]
  def change

    create_table :mangas do |t|
      t.string :titre
      t.string :apercu

      t.timestamps
    end
  end
end

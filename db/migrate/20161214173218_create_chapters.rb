class CreateChapters < ActiveRecord::Migration[5.0]
  def change


    create_table :chapters do |t|
      t.string :titre
      t.string :apercu
      t.string :slug
      t.integer :manga_id

      t.timestamps
    end
    add_index :chapters, :slug, unique: true
  end
end

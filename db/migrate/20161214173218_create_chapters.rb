class CreateChapters < ActiveRecord::Migration[5.0]
  def change

    create_table :chapters do |t|
      t.string :titre
      t.string :apercu
      t.integer :manga_id
      t.integer :chapter_number, :default => 0

      t.timestamps
    end
  end
end

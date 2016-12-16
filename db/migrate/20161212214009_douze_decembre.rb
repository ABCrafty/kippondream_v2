class DouzeDecembre < ActiveRecord::Migration[5.0]
  def change

    create_table :pejis do |t|
      t.string :image
      t.integer :scan_number
      t.integer :chapter_id
      t.timestamps
    end

    create_table :mangas do |t|
      t.string :titre
      t.string :description
      t.string :apercu
      t.string :slug
      t.integer :user_id
      t.text :description

      t.timestamps
    end

    add_column :blog, :illu, :string
    add_column :blog, :user_id, :integer
    add_column :users, :banniere, :string

  end
end

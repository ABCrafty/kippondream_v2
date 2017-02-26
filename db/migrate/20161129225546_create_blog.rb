class CreateBlog < ActiveRecord::Migration[5.0]
  def change
    create_table :blog do |t|
      t.string :titre
      t.text :contenu
      t.string :slug
      t.string :illu
      t.integer :user_id

      t.timestamps
    end
  end
end

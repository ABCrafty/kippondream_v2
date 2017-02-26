class CreatePresentations < ActiveRecord::Migration[5.0]
  def change
    create_table :presentations do |t|
      t.string :titre1
      t.text :contenu1
      t.string :titre2
      t.text :contenu2
      t.string :titre3
      t.text :contenu3

      t.timestamps
    end
  end
end

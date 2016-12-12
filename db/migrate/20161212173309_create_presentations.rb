class CreatePresentations < ActiveRecord::Migration[5.0]
  def change
    create_table :presentations do |t|
      t.string :titre1
      t.text :contenu1
      t.string :titre2
      t.text :contenu2

      t.timestamps
    end

    add_column :pages, :page_number, :integer

  end
end

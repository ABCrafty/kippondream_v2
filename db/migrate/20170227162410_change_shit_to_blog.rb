class ChangeShitToBlog < ActiveRecord::Migration[5.0]
  def change
    rename_column :blog, :contenu, :paragraphe1
    rename_column :blog, :illu, :illu1
    add_column :blog, :paragraphe2, :text
    add_column :blog, :paragraphe3, :text
    add_column :blog, :illu2, :string
  end
end

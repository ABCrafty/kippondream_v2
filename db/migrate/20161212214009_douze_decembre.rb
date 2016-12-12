class DouzeDecembre < ActiveRecord::Migration[5.0]
  def change
    add_column :pejis, :scan_number, :integer
    add_column :mangas, :user_id, :integer
    add_column :mangas, :description, :text
    add_column :blog, :illu, :string
    add_column :users, :banniere, :string

  end
end

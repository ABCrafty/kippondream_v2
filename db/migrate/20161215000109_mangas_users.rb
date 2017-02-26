class MangasUsers < ActiveRecord::Migration[5.0]
  def change
     #add_column :mangas, :slug, :string

    create_table :mangas_users, :id => false do |t|
      t.belongs_to :manga, index: true
      t.belongs_to :user, index: true
    end

  end
end

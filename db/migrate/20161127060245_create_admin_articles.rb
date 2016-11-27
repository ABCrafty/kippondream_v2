class CreateAdminArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_articles do |t|
      t.string :titre
      t.text :contenu

      t.timestamps
    end
  end
end

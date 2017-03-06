class AddPublicToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :blog, :public, :boolean
  end
end

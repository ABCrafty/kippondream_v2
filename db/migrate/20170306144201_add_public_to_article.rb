class AddPublicToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :blog, :public, :boolean
    add_column :magazines, :link_mangadraft, :string
    add_column :presentations, :titre3, :string
    add_column :presentations, :contenu3, :text
    change_column :magazines, :pair, :integer
  end
end

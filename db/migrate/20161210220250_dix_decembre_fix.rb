class DixDecembreFix < ActiveRecord::Migration[5.0]
  def change
    add_column :blog, :slug, :string
    add_column :blog, :user_id, :integer
    add_column :magazines, :slug, :string
    add_column :pages, :magazine_id, :integer
    add_column :pages, :page_number, :integer
  end
end
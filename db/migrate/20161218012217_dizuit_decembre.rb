class DizuitDecembre < ActiveRecord::Migration[5.0]
  def change
    add_column :chapters, :chapter_number, :integer, :default => 0
    remove_column :chapters, :slug, :string
  end
end

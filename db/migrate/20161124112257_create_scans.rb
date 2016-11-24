class CreateScans < ActiveRecord::Migration[5.0]
  def change
    create_table :scans do |t|
      t.string :image

      t.timestamps
    end

    remove_column :pages, :manga_id
    add_column :scans, :manga_id, :integer

  end
end

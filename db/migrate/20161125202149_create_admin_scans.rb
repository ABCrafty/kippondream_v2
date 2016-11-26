class CreateAdminScans < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_scans do |t|
      t.string :image
      t.integer :manga_id
      t.timestamps
    end
  end
end

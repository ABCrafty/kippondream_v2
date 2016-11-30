class CreatePejis < ActiveRecord::Migration[5.0]
  def change
    create_table :pejis do |t|
      t.string :image
      t.integer :manga_id

      t.timestamps
    end
  end
end

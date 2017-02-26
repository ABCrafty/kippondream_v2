class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :image
      t.integer :magazine_id
      t.integer :page_number, :integer

      t.timestamps
    end
  end
end

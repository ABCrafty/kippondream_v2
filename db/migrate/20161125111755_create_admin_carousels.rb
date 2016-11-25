class CreateAdminCarousels < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_carousels do |t|
      t.string :image

      t.timestamps
    end
  end
end

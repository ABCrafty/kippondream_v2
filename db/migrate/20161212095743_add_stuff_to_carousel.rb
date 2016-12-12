class AddStuffToCarousel < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_carousels, :titre, :string
    add_column :admin_carousels, :description, :string
    add_column :admin_carousels, :lien, :string
  end
end

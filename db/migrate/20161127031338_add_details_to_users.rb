class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :date_naissance, :datetime
    add_column :users, :is_femme, :boolean, default: false
    add_column :users, :avatar, :string
    add_column :users, :role, :string
  end
end

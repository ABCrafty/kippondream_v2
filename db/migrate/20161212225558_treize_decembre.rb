class TreizeDecembre < ActiveRecord::Migration[5.0]
  def change

    remove_column :pejis, :page_number, :integer
    add_column :blog, :user_id, :integer

  end
end

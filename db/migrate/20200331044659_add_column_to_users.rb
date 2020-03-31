class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false, default: "no name"
    add_column :users, :icon, :string, default: "no image"
    add_column :users, :admin, :boolean, null: false, default: false
  end
end

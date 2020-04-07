class ChangeColumnToVolunteers < ActiveRecord::Migration[5.2]
  def up
    change_column_null :volunteers, :capacity, false, 4
    change_column :volunteers, :capacity, :integer, default: 4
  end

  def down
    change_column_null :volunteers, :capacity, true, nil
    change_column :volunteers, :capacity, :integer, default: nil
  end
end

class ChangeColumnToVolunteers < ActiveRecord::Migration[5.2]
  def up
    change_column_null :volunteers, :capacity, false, 4
    change_column :volunteers, :capacity, :integer, default: 4
    change_column_null :volunteers, :title, false, "no title"
    change_column :volunteers, :title, :string, default: "no title"
    change_column_null :volunteers, :describe, false, "no describe"
    change_column :volunteers, :describe, :text, default: "no describe"
    change_column_null :volunteers, :address, false, "no address"
    change_column :volunteers, :address, :text, default: "no address"
    change_column_null :volunteers, :date, false, DateTime.now+7
    change_column :volunteers, :date, :datetime, default: DateTime.now+7
  end

  def down
    change_column_null :volunteers, :capacity, true, nil
    change_column :volunteers, :capacity, :integer, default: nil
    change_column_null :volunteers, :title, true, nil
    change_column :volunteers, :title, :string, default: nil
    change_column_null :volunteers, :describe, true, nil
    change_column :volunteers, :describe, :text, default: nil
    change_column_null :volunteers, :address, true, nil
    change_column :volunteers, :address, :text, default: nil
    change_column_null :volunteers, :date, true, nil
    change_column :volunteers, :date, :datetime, default: nil
  end
end

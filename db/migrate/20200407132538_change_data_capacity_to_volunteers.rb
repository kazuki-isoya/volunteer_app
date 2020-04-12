class ChangeDataCapacityToVolunteers < ActiveRecord::Migration[5.2]
  def up
    change_column :volunteers, :capacity, 'integer USING CAST(capacity AS integer)'
  end

  def down
    change_column :volunteers, :capacity, :string
  end
end

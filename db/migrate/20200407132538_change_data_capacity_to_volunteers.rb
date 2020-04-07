class ChangeDataCapacityToVolunteers < ActiveRecord::Migration[5.2]
  def change
    change_column :volunteers, :capacity, 'integer USING CAST(capacity AS integer)'
  end
end

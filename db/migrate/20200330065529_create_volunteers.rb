class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :title
      t.text :describe
      t.string :image
      t.text :address
      t.datetime :date
      t.string :capacity

      t.timestamps
    end
  end
end

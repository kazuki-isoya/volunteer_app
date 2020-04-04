class CreateGoodEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :good_evaluations do |t|
      t.references :user, foreign_key: true
      t.references :evaluate_user, foreign_key: { to_table: :users }
      t.timestamps
      t.index [:user_id, :evaluate_user_id], unique: true
    end
  end
end

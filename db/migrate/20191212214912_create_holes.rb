class CreateHoles < ActiveRecord::Migration[5.2]
  def change
    create_table :holes do |t|
      t.references :course, foreign_key: true
      t.integer :yards
      t.integer :par
      t.integer :handicap
      t.integer :tee
    end
  end
end

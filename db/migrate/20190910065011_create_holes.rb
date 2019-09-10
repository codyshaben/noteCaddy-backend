class CreateHoles < ActiveRecord::Migration[5.2]
  def change
    create_table :holes do |t|
      t.integer :yards
      t.integer :par
      t.integer :handicap
      t.integer :course_id

      t.timestamps
    end
  end
end

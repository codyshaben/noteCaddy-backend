class CreatePlayerCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :player_courses do |t|
      t.references :player, foreign_key: true
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :location
      t.string :image
      t.timestamps
    end
  end
end

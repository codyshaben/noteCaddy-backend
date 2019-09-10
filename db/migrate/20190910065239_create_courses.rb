class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_location

      t.timestamps
    end
    
    create_table :holes do |t|
      t.belongs_to :course
      t.datetime :published_at
      t.timestamps
    end
  end
end

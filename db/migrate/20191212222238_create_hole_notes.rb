class CreateHoleNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :hole_notes do |t|
      t.references :hole, foreign_key: true
      t.references :note, foreign_key: true
    end
  end
end

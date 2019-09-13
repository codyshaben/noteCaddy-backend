class CreateHoleNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :hole_notes do |t|
      t.references :hole_id, foreign_key: true
      t.references :note_id, foreign_key: true

      t.timestamps
    end
  end
end

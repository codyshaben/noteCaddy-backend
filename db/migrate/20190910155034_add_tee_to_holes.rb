class AddTeeToHoles < ActiveRecord::Migration[5.2]
  def change
    add_column :holes, :tee, :integer
  end
end

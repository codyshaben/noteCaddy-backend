class AddImageToHoles < ActiveRecord::Migration[5.2]
  def change
    add_column :holes, :image, :string
  end
end

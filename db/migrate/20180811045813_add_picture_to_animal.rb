class AddPictureToAnimal < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :picture, :string
  end
end

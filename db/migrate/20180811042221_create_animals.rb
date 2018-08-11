class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :facebook
      t.string :twitter
      t.string :tumblr
      t.string :instragram
      t.text :favourite_parks
      t.boolean :desexed

      t.timestamps
    end
  end
end

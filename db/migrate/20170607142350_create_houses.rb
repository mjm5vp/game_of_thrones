class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :words
      t.string :lord
      t.string :seat
      t.string :img_url

      t.timestamps
    end
  end
end

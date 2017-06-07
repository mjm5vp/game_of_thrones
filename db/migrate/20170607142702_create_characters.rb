class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :title
      t.boolean :is_alive
      t.string :img_url
      t.references :house, index: true, foreign_key: true
      t.timestamps
    end
  end
end

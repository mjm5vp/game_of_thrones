class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.references :character, index: true, foreign_key: true, null: false
      t.references :category, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end

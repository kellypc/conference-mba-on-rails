class CreateTalks < ActiveRecord::Migration[8.0]
  def change
    create_table :talks do |t|
      t.string :title
      t.text :description
      t.references :speaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end

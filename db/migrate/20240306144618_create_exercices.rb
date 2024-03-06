class CreateExercices < ActiveRecord::Migration[7.1]
  def change
    create_table :exercices do |t|
      t.string :name
      t.string :photo
      t.integer :time
      t.integer :repetition
      t.float :calories
      t.string :type
      t.string :description
      t.references :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end

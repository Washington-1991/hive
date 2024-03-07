class CreateProgramsWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :programs_workouts do |t|
      t.references :program, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true
      t.date :date
      t.string :feeling
      t.boolean :completed

      t.timestamps
    end
  end
end

class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end

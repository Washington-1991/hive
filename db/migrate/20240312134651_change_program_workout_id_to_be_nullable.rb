class ChangeProgramWorkoutIdToBeNullable < ActiveRecord::Migration[7.1]
  def change
    change_column :messages, :programs_workout_id, :bigint, null: true
  end
end
